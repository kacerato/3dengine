package com.mobilegamestudio.editor

import com.mobilegamestudio.core.model.EditorDocumentHistory
import com.mobilegamestudio.core.model.VisualGraphDocument

data class EditorHistoryStatus(
    val canUndo: Boolean,
    val canRedo: Boolean,
    val undoLabel: String?,
    val redoLabel: String?,
    val isDirty: Boolean,
)

/**
 * History policy for the visual graph editor.
 *
 * A node drag can produce dozens of intermediate coordinates but becomes one
 * Undo entry. Structural edits remain individual, readable history entries.
 */
class NoCodeDocumentController(
    initial: VisualGraphDocument,
    maxEntries: Int = EditorDocumentHistory.DEFAULT_MAX_ENTRIES,
) {
    private val history = EditorDocumentHistory(initial, maxEntries)
    private var savedDocument = initial

    val document: VisualGraphDocument get() = history.document

    fun replaceFromDisk(document: VisualGraphDocument) {
        history.replaceWithoutHistory(document)
        savedDocument = document
    }

    fun commitStructure(
        next: VisualGraphDocument,
        label: String,
    ): Boolean = history.commit(next, label)

    fun commitProperty(
        next: VisualGraphDocument,
        nodeId: String,
        property: String,
        label: String = "Editar $property",
    ): Boolean = history.commit(
        next = next,
        label = label,
        mergeKey = "nocode:property:$nodeId:$property",
    )

    fun beginNodeDrag(nodeIds: Collection<String>) {
        require(nodeIds.isNotEmpty()) { "Node drag requires at least one node." }
        val stableIds = nodeIds.toSortedSet().joinToString(",")
        history.beginTransaction(
            label = if (nodeIds.size == 1) "Mover node" else "Mover ${nodeIds.size} nodes",
            mergeKey = "nocode:drag:$stableIds",
        )
    }

    fun updateNodeDrag(next: VisualGraphDocument): Boolean = history.commit(
        next = next,
        label = "Mover node",
    )

    fun endNodeDrag(): Boolean = history.endTransaction()

    fun cancelNodeDrag(): VisualGraphDocument = history.cancelTransaction()

    fun undo(): VisualGraphDocument? = history.undo()

    fun redo(): VisualGraphDocument? = history.redo()

    fun markSaved() {
        savedDocument = history.document
    }

    fun status(): EditorHistoryStatus {
        val snapshot = history.snapshot()
        return EditorHistoryStatus(
            canUndo = snapshot.canUndo,
            canRedo = snapshot.canRedo,
            undoLabel = snapshot.undoLabel,
            redoLabel = snapshot.redoLabel,
            isDirty = snapshot.document != savedDocument,
        )
    }
}

enum class TextEditKind {
    TYPING,
    DELETE,
    PASTE,
    FORMAT,
    REPLACE,
}

/**
 * Undo policy for the Coding workspace.
 *
 * Normal typing is merged into short bursts. Paste/format/replace are always
 * explicit Undo steps. The UI can call breakMergeGroup() on cursor jumps,
 * selection changes, tab changes or focus loss.
 */
class TextDocumentController(
    initial: String,
    private val nowMillis: () -> Long = System::currentTimeMillis,
    private val typingMergeWindowMillis: Long = DEFAULT_TYPING_MERGE_WINDOW_MILLIS,
    maxEntries: Int = EditorDocumentHistory.DEFAULT_MAX_ENTRIES,
) {
    private val history = EditorDocumentHistory(initial, maxEntries)
    private var savedDocument = initial
    private var mergeGeneration = 0L
    private var lastMergeTime = Long.MIN_VALUE
    private var lastMergeKind: TextEditKind? = null

    init {
        require(typingMergeWindowMillis >= 0L)
    }

    val document: String get() = history.document

    fun replaceFromDisk(source: String) {
        history.replaceWithoutHistory(source)
        savedDocument = source
        breakMergeGroup()
    }

    fun edit(
        source: String,
        kind: TextEditKind,
        label: String = defaultLabel(kind),
    ): Boolean {
        val now = nowMillis()
        val mergeable = kind == TextEditKind.TYPING || kind == TextEditKind.DELETE
        val sameBurst = mergeable &&
            lastMergeKind == kind &&
            lastMergeTime != Long.MIN_VALUE &&
            now - lastMergeTime in 0..typingMergeWindowMillis

        if (!sameBurst) mergeGeneration += 1
        val mergeKey = if (mergeable) "code:${kind.name.lowercase()}:$mergeGeneration" else null
        val changed = history.commit(source, label, mergeKey)
        if (changed) {
            lastMergeKind = if (mergeable) kind else null
            lastMergeTime = if (mergeable) now else Long.MIN_VALUE
        }
        return changed
    }

    fun breakMergeGroup() {
        mergeGeneration += 1
        lastMergeTime = Long.MIN_VALUE
        lastMergeKind = null
    }

    fun undo(): String? {
        breakMergeGroup()
        return history.undo()
    }

    fun redo(): String? {
        breakMergeGroup()
        return history.redo()
    }

    fun markSaved() {
        savedDocument = history.document
    }

    fun status(): EditorHistoryStatus {
        val snapshot = history.snapshot()
        return EditorHistoryStatus(
            canUndo = snapshot.canUndo,
            canRedo = snapshot.canRedo,
            undoLabel = snapshot.undoLabel,
            redoLabel = snapshot.redoLabel,
            isDirty = snapshot.document != savedDocument,
        )
    }

    companion object {
        const val DEFAULT_TYPING_MERGE_WINDOW_MILLIS = 700L

        private fun defaultLabel(kind: TextEditKind): String = when (kind) {
            TextEditKind.TYPING -> "Digitar"
            TextEditKind.DELETE -> "Apagar texto"
            TextEditKind.PASTE -> "Colar"
            TextEditKind.FORMAT -> "Formatar documento"
            TextEditKind.REPLACE -> "Substituir texto"
        }
    }
}
