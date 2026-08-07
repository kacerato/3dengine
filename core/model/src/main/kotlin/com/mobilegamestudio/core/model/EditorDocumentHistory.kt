package com.mobilegamestudio.core.model

/** One reversible immutable-document edit. */
data class EditorDocumentHistoryEntry<T>(
    val label: String,
    val before: T,
    val after: T,
    val mergeKey: String? = null,
)

data class EditorDocumentHistorySnapshot<T>(
    val document: T,
    val canUndo: Boolean,
    val canRedo: Boolean,
    val undoDepth: Int,
    val redoDepth: Int,
    val undoLabel: String?,
    val redoLabel: String?,
    val transactionActive: Boolean,
)

private data class PendingDocumentTransaction<T>(
    val label: String,
    val mergeKey: String?,
    val start: T,
)

/**
 * Generic history for immutable editor documents such as VisualGraphDocument,
 * shader graphs, timelines and text buffers.
 *
 * SceneCommandHistory remains optimized for SceneDocument commands. This class
 * covers workspaces where the natural unit is an immutable document snapshot.
 * Transactions group many intermediate UI mutations into one user-visible Undo.
 */
class EditorDocumentHistory<T>(
    initialDocument: T,
    private val maxEntries: Int = DEFAULT_MAX_ENTRIES,
) {
    private val lock = Any()
    private val undoStack = ArrayDeque<EditorDocumentHistoryEntry<T>>()
    private val redoStack = ArrayDeque<EditorDocumentHistoryEntry<T>>()
    private var current: T = initialDocument
    private var transaction: PendingDocumentTransaction<T>? = null

    init {
        require(maxEntries > 0) { "maxEntries must be positive." }
    }

    val document: T
        get() = synchronized(lock) { current }

    /**
     * Commits a new immutable document. Consecutive edits with the same non-null
     * mergeKey collapse into a single history entry, useful for text typing,
     * dragging nodes and continuous numeric inspector changes.
     */
    fun commit(
        next: T,
        label: String,
        mergeKey: String? = null,
    ): Boolean = synchronized(lock) {
        require(label.isNotBlank()) { "History label cannot be blank." }
        if (next == current) return false

        val active = transaction
        if (active != null) {
            current = next
            return true
        }

        val entry = EditorDocumentHistoryEntry(
            label = label,
            before = current,
            after = next,
            mergeKey = mergeKey,
        )
        push(entry, allowMerge = mergeKey != null)
        current = next
        true
    }

    /** Starts an atomic group. Nested document transactions are rejected. */
    fun beginTransaction(
        label: String,
        mergeKey: String? = null,
    ) = synchronized(lock) {
        require(label.isNotBlank()) { "Transaction label cannot be blank." }
        check(transaction == null) { "A document transaction is already active." }
        transaction = PendingDocumentTransaction(
            label = label,
            mergeKey = mergeKey,
            start = current,
        )
    }

    /**
     * Publishes the entire transaction as one Undo entry. Returns false when no
     * semantic document change happened while the transaction was active.
     */
    fun endTransaction(): Boolean = synchronized(lock) {
        val active = transaction ?: error("No document transaction is active.")
        transaction = null
        if (active.start == current) return false

        push(
            EditorDocumentHistoryEntry(
                label = active.label,
                before = active.start,
                after = current,
                mergeKey = active.mergeKey,
            ),
            allowMerge = active.mergeKey != null,
        )
        true
    }

    /** Rolls back all intermediate changes without creating a history entry. */
    fun cancelTransaction(): T = synchronized(lock) {
        val active = transaction ?: error("No document transaction is active.")
        current = active.start
        transaction = null
        current
    }

    fun undo(): T? = synchronized(lock) {
        check(transaction == null) { "Cannot undo while a document transaction is active." }
        val entry = undoStack.removeLastOrNull() ?: return null
        current = entry.before
        redoStack.addLast(entry)
        current
    }

    fun redo(): T? = synchronized(lock) {
        check(transaction == null) { "Cannot redo while a document transaction is active." }
        val entry = redoStack.removeLastOrNull() ?: return null
        current = entry.after
        undoStack.addLast(entry)
        current
    }

    fun clearHistory() = synchronized(lock) {
        check(transaction == null) { "Cannot clear history while a document transaction is active." }
        undoStack.clear()
        redoStack.clear()
    }

    fun replaceWithoutHistory(document: T) = synchronized(lock) {
        check(transaction == null) { "Cannot replace document while a transaction is active." }
        current = document
        undoStack.clear()
        redoStack.clear()
    }

    fun snapshot(): EditorDocumentHistorySnapshot<T> = synchronized(lock) {
        EditorDocumentHistorySnapshot(
            document = current,
            canUndo = undoStack.isNotEmpty(),
            canRedo = redoStack.isNotEmpty(),
            undoDepth = undoStack.size,
            redoDepth = redoStack.size,
            undoLabel = undoStack.lastOrNull()?.label,
            redoLabel = redoStack.lastOrNull()?.label,
            transactionActive = transaction != null,
        )
    }

    private fun push(
        entry: EditorDocumentHistoryEntry<T>,
        allowMerge: Boolean,
    ) {
        redoStack.clear()
        val last = undoStack.lastOrNull()
        if (
            allowMerge &&
            entry.mergeKey != null &&
            last?.mergeKey == entry.mergeKey
        ) {
            undoStack.removeLast()
            undoStack.addLast(
                last.copy(
                    label = entry.label,
                    after = entry.after,
                ),
            )
            return
        }

        undoStack.addLast(entry)
        while (undoStack.size > maxEntries) undoStack.removeFirst()
    }

    companion object {
        const val DEFAULT_MAX_ENTRIES = 100
    }
}
