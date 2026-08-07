package com.mobilegamestudio.core.model

sealed interface SceneEditResult {
    data class Success(val document: SceneDocument) : SceneEditResult
    data class Failure(val message: String) : SceneEditResult
}

interface SceneCommand {
    val label: String
    fun apply(document: SceneDocument): SceneEditResult
    fun revert(document: SceneDocument): SceneEditResult
}

interface MergeableSceneCommand : SceneCommand {
    fun mergeWith(next: SceneCommand): SceneCommand?
}

/**
 * Groups related edits into one atomic history entry.
 *
 * All commands work over immutable SceneDocument values. Intermediate documents
 * stay local to this command, so a failure never leaks a partially applied
 * transaction to the editor. Undo follows the inverse order, matching the
 * transaction model used by mature authoring tools.
 */
data class CompositeSceneCommand(
    override val label: String,
    val commands: List<SceneCommand>,
) : SceneCommand {
    init {
        require(label.isNotBlank()) { "Transaction label cannot be blank." }
        require(commands.isNotEmpty()) { "A scene transaction requires at least one command." }
    }

    override fun apply(document: SceneDocument): SceneEditResult {
        var working = document
        commands.forEachIndexed { index, command ->
            when (val result = command.apply(working)) {
                is SceneEditResult.Success -> working = result.document
                is SceneEditResult.Failure -> return SceneEditResult.Failure(
                    "Falha na transação '$label' na etapa ${index + 1} (${command.label}): ${result.message}",
                )
            }
        }
        return SceneEditResult.Success(working)
    }

    override fun revert(document: SceneDocument): SceneEditResult {
        var working = document
        commands.asReversed().forEachIndexed { reverseIndex, command ->
            when (val result = command.revert(working)) {
                is SceneEditResult.Success -> working = result.document
                is SceneEditResult.Failure -> {
                    val originalIndex = commands.lastIndex - reverseIndex
                    return SceneEditResult.Failure(
                        "Falha ao desfazer a transação '$label' na etapa ${originalIndex + 1} " +
                            "(${command.label}): ${result.message}",
                    )
                }
            }
        }
        return SceneEditResult.Success(working)
    }
}

class SceneCommandHistory(
    initial: SceneDocument,
    private val maxEntries: Int = 80,
) {
    init {
        require(maxEntries > 0) { "maxEntries must be positive." }
    }

    var document: SceneDocument = initial
        private set
    private val undoStack = ArrayDeque<SceneCommand>()
    private val redoStack = ArrayDeque<SceneCommand>()

    val canUndo: Boolean get() = undoStack.isNotEmpty()
    val canRedo: Boolean get() = redoStack.isNotEmpty()
    val undoLabel: String? get() = undoStack.lastOrNull()?.label
    val redoLabel: String? get() = redoStack.lastOrNull()?.label
    val undoDepth: Int get() = undoStack.size
    val redoDepth: Int get() = redoStack.size

    fun execute(command: SceneCommand): SceneEditResult =
        command.apply(document).also { result ->
            if (result is SceneEditResult.Success) {
                document = result.document
                val merged = (undoStack.lastOrNull() as? MergeableSceneCommand)?.mergeWith(command)
                if (merged != null) {
                    undoStack.removeLast()
                    undoStack.addLast(merged)
                } else {
                    undoStack.addLast(command)
                }
                trimUndoStack()
                redoStack.clear()
            }
        }

    fun executeTransaction(
        label: String,
        commands: List<SceneCommand>,
    ): SceneEditResult {
        if (commands.isEmpty()) return SceneEditResult.Success(document)
        return execute(CompositeSceneCommand(label, commands))
    }

    fun undo(): SceneEditResult {
        val command = undoStack.removeLastOrNull()
            ?: return SceneEditResult.Failure("Não há alterações para desfazer.")
        return command.revert(document).also { result ->
            if (result is SceneEditResult.Success) {
                document = result.document
                redoStack.addLast(command)
            } else {
                undoStack.addLast(command)
            }
        }
    }

    fun redo(): SceneEditResult {
        val command = redoStack.removeLastOrNull()
            ?: return SceneEditResult.Failure("Não há alterações para refazer.")
        return command.apply(document).also { result ->
            if (result is SceneEditResult.Success) {
                document = result.document
                undoStack.addLast(command)
                trimUndoStack()
            } else {
                redoStack.addLast(command)
            }
        }
    }

    fun clearHistory() {
        undoStack.clear()
        redoStack.clear()
    }

    fun replaceFromStorage(value: SceneDocument) {
        document = value
        clearHistory()
    }

    fun updateMetadataFromStorage(value: SceneDocument): Boolean {
        if (
            document.sceneId != value.sceneId ||
            document.copy(metadata = value.metadata) != value
        ) {
            return false
        }
        document = document.copy(metadata = value.metadata)
        return true
    }

    private fun trimUndoStack() {
        while (undoStack.size > maxEntries) undoStack.removeFirst()
    }
}

data class CreateObjectCommand(
    val objectValue: GameObject,
    val insertIndex: Int? = null,
) : SceneCommand {
    override val label = "Criar ${objectValue.name}"

    override fun apply(document: SceneDocument): SceneEditResult {
        if (document.objects.any { it.id == objectValue.id }) {
            return SceneEditResult.Failure("Já existe um objeto com esse ID.")
        }
        val updated = if (objectValue.parentId == null) {
            document.copy(
                objects = document.objects + objectValue,
                rootObjects = document.rootObjects.insert(objectValue.id, insertIndex),
            )
        } else {
            val parent = document.objects.firstOrNull { it.id == objectValue.parentId }
                ?: return SceneEditResult.Failure("O objeto pai não existe.")
            document.copy(
                objects = document.objects.map {
                    if (it.id == parent.id) it.copy(children = it.children.insert(objectValue.id, insertIndex))
                    else it
                } + objectValue,
            )
        }
        return updated.validated()
    }

    override fun revert(document: SceneDocument): SceneEditResult =
        DeleteObjectCommand.capture(document, objectValue.id)?.apply(document)
            ?: SceneEditResult.Failure("O objeto criado não existe mais.")
}

class DeleteObjectCommand private constructor(
    val rootId: String,
    val deletedObjects: List<GameObject>,
    val formerParentId: String?,
    val formerIndex: Int,
) : SceneCommand {
    override val label = "Excluir objeto"

    override fun apply(document: SceneDocument): SceneEditResult {
        val ids = deletedObjects.mapTo(mutableSetOf(), GameObject::id)
        if (rootId !in ids || document.objects.none { it.id == rootId }) {
            return SceneEditResult.Failure("O objeto não existe.")
        }
        return document.copy(
            rootObjects = document.rootObjects.filterNot(ids::contains),
            objects = document.objects
                .filterNot { it.id in ids }
                .map { it.copy(children = it.children.filterNot(ids::contains)) },
            editorSettings = document.editorSettings.copy(
                selectedObjectId = document.editorSettings.selectedObjectId?.takeUnless(ids::contains),
            ),
        ).validated()
    }

    override fun revert(document: SceneDocument): SceneEditResult {
        if (deletedObjects.any { deleted -> document.objects.any { it.id == deleted.id } }) {
            return SceneEditResult.Failure("Não é possível restaurar: um ID foi reutilizado.")
        }
        var restored = document.copy(objects = document.objects + deletedObjects)
        restored = if (formerParentId == null) {
            restored.copy(rootObjects = restored.rootObjects.insert(rootId, formerIndex))
        } else {
            restored.copy(objects = restored.objects.map {
                if (it.id == formerParentId) it.copy(children = it.children.insert(rootId, formerIndex)) else it
            })
        }
        return restored.validated()
    }

    companion object {
        fun capture(document: SceneDocument, objectId: String): DeleteObjectCommand? {
            val byId = document.objects.associateBy(GameObject::id)
            val root = byId[objectId] ?: return null
            val ids = linkedSetOf<String>()
            fun collect(id: String) {
                if (ids.add(id)) byId[id]?.children?.forEach(::collect)
            }
            collect(objectId)
            val siblings = root.parentId?.let(byId::get)?.children ?: document.rootObjects
            return DeleteObjectCommand(
                rootId = objectId,
                deletedObjects = document.objects.filter { it.id in ids },
                formerParentId = root.parentId,
                formerIndex = siblings.indexOf(objectId).coerceAtLeast(0),
            )
        }
    }
}

data class RenameObjectCommand(
    val objectId: String,
    val oldName: String,
    val newName: String,
) : SceneCommand {
    override val label = "Renomear objeto"
    override fun apply(document: SceneDocument): SceneEditResult {
        val current = document.objects.firstOrNull { it.id == objectId }
            ?: return SceneEditResult.Failure("O objeto não existe.")
        if (current.name != oldName) {
            return SceneEditResult.Failure("O nome foi alterado por outra operação.")
        }
        return document.updateObject(objectId) {
            it.copy(name = newName.trim())
        }
    }

    override fun revert(document: SceneDocument): SceneEditResult = document.updateObject(objectId) {
        it.copy(name = oldName)
    }
}

data class UpdateTransformCommand(
    val objectId: String,
    val before: TransformComponent,
    val after: TransformComponent,
) : SceneCommand {
    override val label = "Alterar Transform"
    override fun apply(document: SceneDocument): SceneEditResult = document.replaceTransform(objectId, before, after)
    override fun revert(document: SceneDocument): SceneEditResult = document.replaceTransform(objectId, after, before)
}

data class ReparentObjectCommand(
    val objectId: String,
    val oldParentId: String?,
    val newParentId: String?,
    val oldIndex: Int,
    val newIndex: Int? = null,
) : SceneCommand {
    override val label = "Alterar objeto pai"
    override fun apply(document: SceneDocument): SceneEditResult =
        document.reparent(objectId, oldParentId, newParentId, newIndex)

    override fun revert(document: SceneDocument): SceneEditResult =
        document.reparent(objectId, newParentId, oldParentId, oldIndex)
}

data class AddComponentCommand(
    val objectId: String,
    val component: SceneComponent,
) : SceneCommand {
    override val label = "Adicionar componente"
    override fun apply(document: SceneDocument): SceneEditResult {
        val current = document.objects.firstOrNull { it.id == objectId }
            ?: return SceneEditResult.Failure("O objeto não existe.")
        if (current.components.any { it.componentId == component.componentId }) {
            return SceneEditResult.Failure("O objeto já possui esse componente.")
        }
        return document.updateObject(objectId) {
            it.copy(components = it.components + component)
        }
    }

    override fun revert(document: SceneDocument): SceneEditResult = document.updateObject(objectId) {
        it.copy(components = it.components.filterNot { existing -> existing.componentId == component.componentId })
    }
}

data class RemoveComponentCommand(
    val objectId: String,
    val component: SceneComponent,
) : SceneCommand {
    override val label = "Remover componente"
    override fun apply(document: SceneDocument): SceneEditResult {
        if (component is TransformComponent) return SceneEditResult.Failure("Transform é obrigatório.")
        val current = document.objects.firstOrNull { it.id == objectId }
            ?: return SceneEditResult.Failure("O objeto não existe.")
        if (current.components.none { it.componentId == component.componentId }) {
            return SceneEditResult.Failure("O componente não existe.")
        }
        return document.updateObject(objectId) {
            it.copy(components = it.components.filterNot { existing -> existing.componentId == component.componentId })
        }
    }

    override fun revert(document: SceneDocument): SceneEditResult = document.updateObject(objectId) {
        it.copy(components = it.components + component)
    }
}

private fun SceneDocument.replaceTransform(
    objectId: String,
    expected: TransformComponent,
    replacement: TransformComponent,
): SceneEditResult {
    val objectValue = objects.firstOrNull { it.id == objectId }
        ?: return SceneEditResult.Failure("O objeto não existe.")
    val current = objectValue.component<TransformComponent>()
        ?: return SceneEditResult.Failure("Transform não encontrado.")
    if (current != expected) {
        return SceneEditResult.Failure("Transform foi alterado por outra operação.")
    }
    return updateObject(objectId) { currentObject ->
        currentObject.copy(components = currentObject.components.map {
            if (it is TransformComponent) replacement else it
        })
    }
}

private fun SceneDocument.reparent(
    objectId: String,
    expectedParentId: String?,
    targetParentId: String?,
    targetIndex: Int?,
): SceneEditResult {
    val objectValue = objects.firstOrNull { it.id == objectId }
        ?: return SceneEditResult.Failure("O objeto não existe.")
    if (objectValue.parentId != expectedParentId) {
        return SceneEditResult.Failure("O pai do objeto mudou.")
    }
    if (targetParentId == objectId) return SceneEditResult.Failure("Um objeto não pode ser pai de si mesmo.")
    if (targetParentId != null && objects.none { it.id == targetParentId }) {
        return SceneEditResult.Failure("O novo objeto pai não existe.")
    }
    val updatedObjects = objects.map { current ->
        when (current.id) {
            objectId -> current.copy(parentId = targetParentId)
            expectedParentId -> current.copy(children = current.children - objectId)
            targetParentId -> current.copy(children = (current.children - objectId).insert(objectId, targetIndex))
            else -> current
        }
    }
    val updatedRoots = when {
        expectedParentId == null && targetParentId != null -> rootObjects - objectId
        expectedParentId != null && targetParentId == null -> (rootObjects - objectId).insert(objectId, targetIndex)
        else -> rootObjects
    }
    return copy(objects = updatedObjects, rootObjects = updatedRoots).validated()
}

private fun SceneDocument.updateObject(
    objectId: String,
    transform: (GameObject) -> GameObject,
): SceneEditResult {
    if (objects.none { it.id == objectId }) return SceneEditResult.Failure("O objeto não existe.")
    return copy(objects = objects.map { if (it.id == objectId) transform(it) else it }).validated()
}

private fun SceneDocument.validated(): SceneEditResult {
    val errors = SceneValidator.validate(this)
    return if (errors.isEmpty()) SceneEditResult.Success(this)
    else SceneEditResult.Failure("A alteração deixaria a cena inconsistente: ${errors.first()}.")
}

private fun <T> List<T>.insert(value: T, index: Int?): List<T> {
    val target = index?.coerceIn(0, size) ?: size
    return toMutableList().apply { add(target, value) }
}
