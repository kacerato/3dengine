package com.mobilegamestudio.editor.domain

enum class EditorSelectionKind {
    NONE,
    TERRAIN,
    PRIMITIVE_MESH,
    EDITABLE_MESH,
    VOXEL_VOLUME,
    RENDERABLE,
    PLAYER,
    CAMERA,
    LIGHT,
    UI,
    OTHER,
}

data class EditorSelection(
    val objectId: String? = null,
    val displayName: String = "Nenhuma seleção",
    val kind: EditorSelectionKind = EditorSelectionKind.NONE,
    val locked: Boolean = false,
) {
    init {
        require(kind == EditorSelectionKind.NONE || !objectId.isNullOrBlank()) {
            "A non-empty selection requires an object id."
        }
    }

    companion object {
        val None = EditorSelection()
    }
}

enum class EditorToolset(val label: String) {
    OBJECT("Objetos"),
    TERRAIN("Terreno"),
    MESH("Malha"),
    VOLUME("Volume"),
    MATERIAL("Materiais"),
}

enum class ViewportInteractionMode {
    NAVIGATE,
    SELECT,
    GIZMO,
    TERRAIN_BRUSH,
    MESH_EDIT,
    VOXEL_BRUSH,
    MATERIAL_PAINT,
}

enum class EditorCapability {
    SELECT,
    NAVIGATE,
    TRANSFORM,
    DUPLICATE,
    DELETE,
    CREATE_TERRAIN,
    CREATE_EDITABLE_MESH,
    CREATE_VOLUME,
    CONVERT_TO_EDITABLE_MESH,
    CONVERT_TO_VOLUME,
    TERRAIN_SCULPT,
    TERRAIN_PAINT,
    MESH_EDIT,
    VOXEL_EDIT,
    MATERIAL_EDIT,
}

enum class EditorToolId(
    val toolset: EditorToolset,
    val interactionMode: ViewportInteractionMode,
) {
    OBJECT_SELECT(EditorToolset.OBJECT, ViewportInteractionMode.SELECT),
    OBJECT_MOVE(EditorToolset.OBJECT, ViewportInteractionMode.GIZMO),
    OBJECT_ROTATE(EditorToolset.OBJECT, ViewportInteractionMode.GIZMO),
    OBJECT_SCALE(EditorToolset.OBJECT, ViewportInteractionMode.GIZMO),

    TERRAIN_NAVIGATE(EditorToolset.TERRAIN, ViewportInteractionMode.NAVIGATE),
    TERRAIN_RAISE(EditorToolset.TERRAIN, ViewportInteractionMode.TERRAIN_BRUSH),
    TERRAIN_LOWER(EditorToolset.TERRAIN, ViewportInteractionMode.TERRAIN_BRUSH),
    TERRAIN_SMOOTH(EditorToolset.TERRAIN, ViewportInteractionMode.TERRAIN_BRUSH),
    TERRAIN_FLATTEN(EditorToolset.TERRAIN, ViewportInteractionMode.TERRAIN_BRUSH),
    TERRAIN_PAINT(EditorToolset.TERRAIN, ViewportInteractionMode.MATERIAL_PAINT),

    MESH_VERTEX_SELECT(EditorToolset.MESH, ViewportInteractionMode.MESH_EDIT),
    MESH_EDGE_SELECT(EditorToolset.MESH, ViewportInteractionMode.MESH_EDIT),
    MESH_FACE_SELECT(EditorToolset.MESH, ViewportInteractionMode.MESH_EDIT),
    MESH_MOVE(EditorToolset.MESH, ViewportInteractionMode.GIZMO),
    MESH_ROTATE(EditorToolset.MESH, ViewportInteractionMode.GIZMO),
    MESH_SCALE(EditorToolset.MESH, ViewportInteractionMode.GIZMO),

    VOLUME_ADD(EditorToolset.VOLUME, ViewportInteractionMode.VOXEL_BRUSH),
    VOLUME_SUBTRACT(EditorToolset.VOLUME, ViewportInteractionMode.VOXEL_BRUSH),
    VOLUME_SMOOTH(EditorToolset.VOLUME, ViewportInteractionMode.VOXEL_BRUSH),
    VOLUME_SLICE(EditorToolset.VOLUME, ViewportInteractionMode.VOXEL_BRUSH),

    MATERIAL_INSPECT(EditorToolset.MATERIAL, ViewportInteractionMode.SELECT),
    MATERIAL_PAINT(EditorToolset.MATERIAL, ViewportInteractionMode.MATERIAL_PAINT),
}

enum class EditorConversion {
    PRIMITIVE_TO_EDITABLE_MESH,
    EDITABLE_MESH_TO_VOLUME,
}

enum class EditorDiagnosticSeverity {
    INFO,
    WARNING,
    ERROR,
}

data class EditorDiagnostic(
    val code: String,
    val message: String,
    val severity: EditorDiagnosticSeverity = EditorDiagnosticSeverity.INFO,
)

data class EditorResumePoint(
    val toolset: EditorToolset,
    val tool: EditorToolId,
)

sealed interface PendingEditorOperation {
    val requestedToolset: EditorToolset
    val resumePoint: EditorResumePoint

    data class SelectOrCreateTarget(
        override val requestedToolset: EditorToolset,
        val acceptedKinds: Set<EditorSelectionKind>,
        val allowCreate: Boolean,
        val prompt: String,
        override val resumePoint: EditorResumePoint,
    ) : PendingEditorOperation

    data class ConfirmConversion(
        override val requestedToolset: EditorToolset,
        val sourceObjectId: String,
        val sourceKind: EditorSelectionKind,
        val resultKind: EditorSelectionKind,
        val conversion: EditorConversion,
        val prompt: String,
        override val resumePoint: EditorResumePoint,
    ) : PendingEditorOperation
}

data class EditorToolDescriptor(
    val id: EditorToolId,
    val label: String,
    val requiredCapability: EditorCapability,
    val mutatesScene: Boolean,
)

object EditorToolRegistry {
    private val descriptors = listOf(
        EditorToolDescriptor(EditorToolId.OBJECT_SELECT, "Selecionar", EditorCapability.SELECT, false),
        EditorToolDescriptor(EditorToolId.OBJECT_MOVE, "Mover", EditorCapability.TRANSFORM, true),
        EditorToolDescriptor(EditorToolId.OBJECT_ROTATE, "Girar", EditorCapability.TRANSFORM, true),
        EditorToolDescriptor(EditorToolId.OBJECT_SCALE, "Escalar", EditorCapability.TRANSFORM, true),
        EditorToolDescriptor(EditorToolId.TERRAIN_NAVIGATE, "Navegar", EditorCapability.NAVIGATE, false),
        EditorToolDescriptor(EditorToolId.TERRAIN_RAISE, "Elevar", EditorCapability.TERRAIN_SCULPT, true),
        EditorToolDescriptor(EditorToolId.TERRAIN_LOWER, "Escavar", EditorCapability.TERRAIN_SCULPT, true),
        EditorToolDescriptor(EditorToolId.TERRAIN_SMOOTH, "Suavizar", EditorCapability.TERRAIN_SCULPT, true),
        EditorToolDescriptor(EditorToolId.TERRAIN_FLATTEN, "Nivelar", EditorCapability.TERRAIN_SCULPT, true),
        EditorToolDescriptor(EditorToolId.TERRAIN_PAINT, "Pintar", EditorCapability.TERRAIN_PAINT, true),
        EditorToolDescriptor(EditorToolId.MESH_VERTEX_SELECT, "Vértices", EditorCapability.MESH_EDIT, false),
        EditorToolDescriptor(EditorToolId.MESH_EDGE_SELECT, "Arestas", EditorCapability.MESH_EDIT, false),
        EditorToolDescriptor(EditorToolId.MESH_FACE_SELECT, "Faces", EditorCapability.MESH_EDIT, false),
        EditorToolDescriptor(EditorToolId.MESH_MOVE, "Mover seleção", EditorCapability.MESH_EDIT, true),
        EditorToolDescriptor(EditorToolId.MESH_ROTATE, "Girar seleção", EditorCapability.MESH_EDIT, true),
        EditorToolDescriptor(EditorToolId.MESH_SCALE, "Escalar seleção", EditorCapability.MESH_EDIT, true),
        EditorToolDescriptor(EditorToolId.VOLUME_ADD, "Adicionar volume", EditorCapability.VOXEL_EDIT, true),
        EditorToolDescriptor(EditorToolId.VOLUME_SUBTRACT, "Remover volume", EditorCapability.VOXEL_EDIT, true),
        EditorToolDescriptor(EditorToolId.VOLUME_SMOOTH, "Suavizar volume", EditorCapability.VOXEL_EDIT, true),
        EditorToolDescriptor(EditorToolId.VOLUME_SLICE, "Corte", EditorCapability.VOXEL_EDIT, true),
        EditorToolDescriptor(EditorToolId.MATERIAL_INSPECT, "Inspecionar material", EditorCapability.MATERIAL_EDIT, false),
        EditorToolDescriptor(EditorToolId.MATERIAL_PAINT, "Pintar material", EditorCapability.MATERIAL_EDIT, true),
    ).associateBy(EditorToolDescriptor::id)

    fun descriptor(id: EditorToolId): EditorToolDescriptor =
        requireNotNull(descriptors[id]) { "Tool $id is not registered." }

    fun defaultFor(toolset: EditorToolset): EditorToolId = when (toolset) {
        EditorToolset.OBJECT -> EditorToolId.OBJECT_SELECT
        EditorToolset.TERRAIN -> EditorToolId.TERRAIN_NAVIGATE
        EditorToolset.MESH -> EditorToolId.MESH_VERTEX_SELECT
        EditorToolset.VOLUME -> EditorToolId.VOLUME_ADD
        EditorToolset.MATERIAL -> EditorToolId.MATERIAL_INSPECT
    }

    fun availableFor(state: EditorContextState): List<EditorToolDescriptor> =
        descriptors.values
            .filter { descriptor ->
                descriptor.id.toolset == state.activeToolset &&
                    descriptor.requiredCapability in state.capabilities &&
                    (!state.selection.locked || !descriptor.mutatesScene)
            }
            .sortedBy { it.id.ordinal }
}

enum class EditorCommandId {
    CREATE_TERRAIN,
    CREATE_EDITABLE_MESH,
    CREATE_VOLUME,
    CONVERT_TO_EDITABLE_MESH,
    CONVERT_TO_VOLUME,
    DUPLICATE_SELECTION,
    DELETE_SELECTION,
}

data class EditorCommandDescriptor(
    val id: EditorCommandId,
    val label: String,
    val requiredCapability: EditorCapability,
)

object EditorCommandRegistry {
    private val descriptors = listOf(
        EditorCommandDescriptor(EditorCommandId.CREATE_TERRAIN, "Criar terreno", EditorCapability.CREATE_TERRAIN),
        EditorCommandDescriptor(EditorCommandId.CREATE_EDITABLE_MESH, "Criar malha editável", EditorCapability.CREATE_EDITABLE_MESH),
        EditorCommandDescriptor(EditorCommandId.CREATE_VOLUME, "Criar volume", EditorCapability.CREATE_VOLUME),
        EditorCommandDescriptor(EditorCommandId.CONVERT_TO_EDITABLE_MESH, "Tornar malha editável", EditorCapability.CONVERT_TO_EDITABLE_MESH),
        EditorCommandDescriptor(EditorCommandId.CONVERT_TO_VOLUME, "Converter para volume", EditorCapability.CONVERT_TO_VOLUME),
        EditorCommandDescriptor(EditorCommandId.DUPLICATE_SELECTION, "Duplicar", EditorCapability.DUPLICATE),
        EditorCommandDescriptor(EditorCommandId.DELETE_SELECTION, "Excluir", EditorCapability.DELETE),
    )

    fun availableFor(state: EditorContextState): List<EditorCommandDescriptor> =
        descriptors.filter { it.requiredCapability in state.capabilities }
}

data class EditorContextState(
    val selection: EditorSelection,
    val activeToolset: EditorToolset,
    val activeTool: EditorToolId,
    val interactionMode: ViewportInteractionMode,
    val capabilities: Set<EditorCapability>,
    val pendingOperation: PendingEditorOperation? = null,
    val diagnostic: EditorDiagnostic? = null,
) {
    init {
        require(activeTool.toolset == activeToolset) {
            "Active tool $activeTool does not belong to $activeToolset."
        }
        require(isSelectionCompatible(activeToolset, selection.kind)) {
            "Selection ${selection.kind} is incompatible with active toolset $activeToolset."
        }
        require(EditorToolRegistry.descriptor(activeTool).requiredCapability in capabilities) {
            "Active tool $activeTool is not supported by the current capabilities."
        }
        require(!selection.locked || !EditorToolRegistry.descriptor(activeTool).mutatesScene) {
            "A mutating tool cannot be active for a locked selection."
        }
    }

    val breadcrumb: String
        get() = if (selection.kind == EditorSelectionKind.NONE) {
            activeToolset.label
        } else {
            "${activeToolset.label} / ${selection.displayName}"
        }

    companion object {
        fun initial(): EditorContextState = coherentState(
            selection = EditorSelection.None,
            toolset = EditorToolset.OBJECT,
            tool = EditorToolId.OBJECT_SELECT,
        )
    }
}

sealed interface EditorIntent {
    data class SelectionChanged(val selection: EditorSelection) : EditorIntent
    data object ClearSelection : EditorIntent
    data class ActivateToolset(val toolset: EditorToolset) : EditorIntent
    data class ActivateTool(val tool: EditorToolId) : EditorIntent
    data class ConfirmTarget(val selection: EditorSelection) : EditorIntent
    data class ConfirmConversion(val resultSelection: EditorSelection) : EditorIntent
    data object CancelPendingOperation : EditorIntent
    data object ClearDiagnostic : EditorIntent
}

data class EditorTransition(
    val state: EditorContextState,
    val effect: EditorDomainEffect? = null,
)

sealed interface EditorDomainEffect {
    data class RequestTargetPicker(
        val toolset: EditorToolset,
        val acceptedKinds: Set<EditorSelectionKind>,
        val allowCreate: Boolean,
    ) : EditorDomainEffect

    data class RequestConversion(
        val conversion: EditorConversion,
        val sourceObjectId: String,
        val resultKind: EditorSelectionKind,
    ) : EditorDomainEffect
}

object EditorContextReducer {
    fun reduce(state: EditorContextState, intent: EditorIntent): EditorTransition = when (intent) {
        is EditorIntent.SelectionChanged -> selectionChanged(state, intent.selection)
        EditorIntent.ClearSelection -> selectionChanged(state, EditorSelection.None)
        is EditorIntent.ActivateToolset -> activateToolset(state, intent.toolset)
        is EditorIntent.ActivateTool -> activateTool(state, intent.tool)
        is EditorIntent.ConfirmTarget -> confirmTarget(state, intent.selection)
        is EditorIntent.ConfirmConversion -> confirmConversion(state, intent.resultSelection)
        EditorIntent.CancelPendingOperation -> EditorTransition(
            state.copy(pendingOperation = null, diagnostic = null),
        )
        EditorIntent.ClearDiagnostic -> EditorTransition(state.copy(diagnostic = null))
    }

    private fun selectionChanged(
        state: EditorContextState,
        selection: EditorSelection,
    ): EditorTransition {
        val compatible = isSelectionCompatible(state.activeToolset, selection.kind)
        if (!compatible) {
            return EditorTransition(
                coherentState(
                    selection = selection,
                    toolset = EditorToolset.OBJECT,
                    tool = EditorToolId.OBJECT_SELECT,
                    diagnostic = EditorDiagnostic(
                        code = "selection_changed_toolset_reset",
                        message = "O contexto voltou para Objetos porque a nova seleção não é compatível com ${state.activeToolset.label}.",
                    ),
                ),
            )
        }
        val capabilities = capabilitiesFor(selection)
        val currentToolDescriptor = EditorToolRegistry.descriptor(state.activeTool)
        val tool = if (
            currentToolDescriptor.requiredCapability in capabilities &&
            (!selection.locked || !currentToolDescriptor.mutatesScene)
        ) {
            state.activeTool
        } else {
            EditorToolRegistry.defaultFor(state.activeToolset)
        }
        return EditorTransition(
            coherentState(
                selection = selection,
                toolset = state.activeToolset,
                tool = tool,
            ),
        )
    }

    private fun activateToolset(
        state: EditorContextState,
        requested: EditorToolset,
    ): EditorTransition {
        if (requested == EditorToolset.OBJECT) {
            return EditorTransition(
                coherentState(
                    selection = state.selection,
                    toolset = EditorToolset.OBJECT,
                    tool = EditorToolId.OBJECT_SELECT,
                ),
            )
        }
        if (isSelectionCompatible(requested, state.selection.kind)) {
            return EditorTransition(
                coherentState(
                    selection = state.selection,
                    toolset = requested,
                    tool = EditorToolRegistry.defaultFor(requested),
                ),
            )
        }
        val resumePoint = EditorResumePoint(state.activeToolset, state.activeTool)
        val pending = when {
            requested == EditorToolset.MESH && state.selection.kind == EditorSelectionKind.PRIMITIVE_MESH ->
                PendingEditorOperation.ConfirmConversion(
                    requestedToolset = requested,
                    sourceObjectId = requireNotNull(state.selection.objectId),
                    sourceKind = state.selection.kind,
                    resultKind = EditorSelectionKind.EDITABLE_MESH,
                    conversion = EditorConversion.PRIMITIVE_TO_EDITABLE_MESH,
                    prompt = "Transformar ${state.selection.displayName} em malha editável?",
                    resumePoint = resumePoint,
                )

            requested == EditorToolset.VOLUME && state.selection.kind == EditorSelectionKind.EDITABLE_MESH ->
                PendingEditorOperation.ConfirmConversion(
                    requestedToolset = requested,
                    sourceObjectId = requireNotNull(state.selection.objectId),
                    sourceKind = state.selection.kind,
                    resultKind = EditorSelectionKind.VOXEL_VOLUME,
                    conversion = EditorConversion.EDITABLE_MESH_TO_VOLUME,
                    prompt = "Converter ${state.selection.displayName} para volume voxel?",
                    resumePoint = resumePoint,
                )

            else -> PendingEditorOperation.SelectOrCreateTarget(
                requestedToolset = requested,
                acceptedKinds = acceptedKindsFor(requested),
                allowCreate = requested != EditorToolset.MATERIAL,
                prompt = targetPrompt(requested),
                resumePoint = resumePoint,
            )
        }
        val effect = when (pending) {
            is PendingEditorOperation.ConfirmConversion -> EditorDomainEffect.RequestConversion(
                conversion = pending.conversion,
                sourceObjectId = pending.sourceObjectId,
                resultKind = pending.resultKind,
            )
            is PendingEditorOperation.SelectOrCreateTarget -> EditorDomainEffect.RequestTargetPicker(
                toolset = pending.requestedToolset,
                acceptedKinds = pending.acceptedKinds,
                allowCreate = pending.allowCreate,
            )
        }
        return EditorTransition(
            state.copy(
                pendingOperation = pending,
                diagnostic = EditorDiagnostic(
                    code = "toolset_requires_target",
                    message = when (pending) {
                        is PendingEditorOperation.ConfirmConversion -> pending.prompt
                        is PendingEditorOperation.SelectOrCreateTarget -> pending.prompt
                    },
                ),
            ),
            effect = effect,
        )
    }

    private fun activateTool(
        state: EditorContextState,
        tool: EditorToolId,
    ): EditorTransition {
        if (tool.toolset != state.activeToolset) {
            return EditorTransition(
                state.copy(
                    diagnostic = EditorDiagnostic(
                        code = "tool_wrong_toolset",
                        message = "A ferramenta ${tool.name} não pertence ao contexto ${state.activeToolset.label}.",
                        severity = EditorDiagnosticSeverity.ERROR,
                    ),
                ),
            )
        }
        val descriptor = EditorToolRegistry.descriptor(tool)
        if (descriptor.requiredCapability !in state.capabilities) {
            return EditorTransition(
                state.copy(
                    diagnostic = EditorDiagnostic(
                        code = "tool_capability_missing",
                        message = "A seleção atual não suporta ${descriptor.label}.",
                        severity = EditorDiagnosticSeverity.WARNING,
                    ),
                ),
            )
        }
        if (state.selection.locked && descriptor.mutatesScene) {
            return EditorTransition(
                state.copy(
                    diagnostic = EditorDiagnostic(
                        code = "selection_locked",
                        message = "A camada da seleção está bloqueada.",
                        severity = EditorDiagnosticSeverity.WARNING,
                    ),
                ),
            )
        }
        return EditorTransition(
            state.copy(
                activeTool = tool,
                interactionMode = tool.interactionMode,
                pendingOperation = null,
                diagnostic = null,
            ),
        )
    }

    private fun confirmTarget(
        state: EditorContextState,
        selection: EditorSelection,
    ): EditorTransition {
        val pending = state.pendingOperation as? PendingEditorOperation.SelectOrCreateTarget
            ?: return invalidPending(state, "Nenhuma escolha de alvo está pendente.")
        if (selection.kind !in pending.acceptedKinds) {
            return invalidPending(
                state,
                "${selection.displayName} não é compatível com ${pending.requestedToolset.label}.",
            )
        }
        return EditorTransition(
            coherentState(
                selection = selection,
                toolset = pending.requestedToolset,
                tool = EditorToolRegistry.defaultFor(pending.requestedToolset),
            ),
        )
    }

    private fun confirmConversion(
        state: EditorContextState,
        resultSelection: EditorSelection,
    ): EditorTransition {
        val pending = state.pendingOperation as? PendingEditorOperation.ConfirmConversion
            ?: return invalidPending(state, "Nenhuma conversão está pendente.")
        if (resultSelection.objectId != pending.sourceObjectId || resultSelection.kind != pending.resultKind) {
            return invalidPending(state, "O resultado da conversão não corresponde à operação solicitada.")
        }
        return EditorTransition(
            coherentState(
                selection = resultSelection,
                toolset = pending.requestedToolset,
                tool = EditorToolRegistry.defaultFor(pending.requestedToolset),
            ),
        )
    }

    private fun invalidPending(
        state: EditorContextState,
        message: String,
    ): EditorTransition = EditorTransition(
        state.copy(
            diagnostic = EditorDiagnostic(
                code = "pending_operation_invalid",
                message = message,
                severity = EditorDiagnosticSeverity.ERROR,
            ),
        ),
    )
}

fun isSelectionCompatible(
    toolset: EditorToolset,
    kind: EditorSelectionKind,
): Boolean = when (toolset) {
    EditorToolset.OBJECT -> true
    EditorToolset.TERRAIN -> kind == EditorSelectionKind.TERRAIN
    EditorToolset.MESH -> kind == EditorSelectionKind.EDITABLE_MESH
    EditorToolset.VOLUME -> kind == EditorSelectionKind.VOXEL_VOLUME
    EditorToolset.MATERIAL -> kind in setOf(
        EditorSelectionKind.TERRAIN,
        EditorSelectionKind.PRIMITIVE_MESH,
        EditorSelectionKind.EDITABLE_MESH,
        EditorSelectionKind.VOXEL_VOLUME,
        EditorSelectionKind.RENDERABLE,
    )
}

fun acceptedKindsFor(toolset: EditorToolset): Set<EditorSelectionKind> = when (toolset) {
    EditorToolset.OBJECT -> EditorSelectionKind.entries.toSet()
    EditorToolset.TERRAIN -> setOf(EditorSelectionKind.TERRAIN)
    EditorToolset.MESH -> setOf(EditorSelectionKind.EDITABLE_MESH)
    EditorToolset.VOLUME -> setOf(EditorSelectionKind.VOXEL_VOLUME)
    EditorToolset.MATERIAL -> setOf(
        EditorSelectionKind.TERRAIN,
        EditorSelectionKind.PRIMITIVE_MESH,
        EditorSelectionKind.EDITABLE_MESH,
        EditorSelectionKind.VOXEL_VOLUME,
        EditorSelectionKind.RENDERABLE,
    )
}

fun capabilitiesFor(selection: EditorSelection): Set<EditorCapability> {
    val base = mutableSetOf(
        EditorCapability.SELECT,
        EditorCapability.NAVIGATE,
        EditorCapability.CREATE_TERRAIN,
        EditorCapability.CREATE_EDITABLE_MESH,
        EditorCapability.CREATE_VOLUME,
    )
    if (selection.kind != EditorSelectionKind.NONE) {
        base += EditorCapability.TRANSFORM
        base += EditorCapability.DUPLICATE
        base += EditorCapability.DELETE
    }
    when (selection.kind) {
        EditorSelectionKind.TERRAIN -> {
            base += EditorCapability.TERRAIN_SCULPT
            base += EditorCapability.TERRAIN_PAINT
            base += EditorCapability.MATERIAL_EDIT
        }
        EditorSelectionKind.PRIMITIVE_MESH -> {
            base += EditorCapability.CONVERT_TO_EDITABLE_MESH
            base += EditorCapability.MATERIAL_EDIT
        }
        EditorSelectionKind.EDITABLE_MESH -> {
            base += EditorCapability.MESH_EDIT
            base += EditorCapability.CONVERT_TO_VOLUME
            base += EditorCapability.MATERIAL_EDIT
        }
        EditorSelectionKind.VOXEL_VOLUME -> {
            base += EditorCapability.VOXEL_EDIT
            base += EditorCapability.MATERIAL_EDIT
        }
        EditorSelectionKind.RENDERABLE -> base += EditorCapability.MATERIAL_EDIT
        else -> Unit
    }
    if (selection.locked) {
        base -= EditorCapability.TRANSFORM
        base -= EditorCapability.DUPLICATE
        base -= EditorCapability.DELETE
        base -= EditorCapability.TERRAIN_SCULPT
        base -= EditorCapability.TERRAIN_PAINT
        base -= EditorCapability.MESH_EDIT
        base -= EditorCapability.VOXEL_EDIT
        base -= EditorCapability.MATERIAL_EDIT
    }
    return base
}

private fun coherentState(
    selection: EditorSelection,
    toolset: EditorToolset,
    tool: EditorToolId,
    diagnostic: EditorDiagnostic? = null,
): EditorContextState {
    val capabilities = capabilitiesFor(selection)
    val descriptor = EditorToolRegistry.descriptor(tool)
    val safeTool = if (
        tool.toolset == toolset &&
        descriptor.requiredCapability in capabilities &&
        (!selection.locked || !descriptor.mutatesScene)
    ) {
        tool
    } else {
        EditorToolRegistry.defaultFor(toolset)
    }
    return EditorContextState(
        selection = selection,
        activeToolset = toolset,
        activeTool = safeTool,
        interactionMode = safeTool.interactionMode,
        capabilities = capabilities,
        diagnostic = diagnostic,
    )
}

private fun targetPrompt(toolset: EditorToolset): String = when (toolset) {
    EditorToolset.OBJECT -> "Selecione um objeto."
    EditorToolset.TERRAIN -> "Selecione um terreno existente ou crie um novo."
    EditorToolset.MESH -> "Selecione uma malha editável ou crie uma nova."
    EditorToolset.VOLUME -> "Selecione um volume existente ou crie um novo."
    EditorToolset.MATERIAL -> "Selecione um Terrain, malha ou volume renderizável."
}
