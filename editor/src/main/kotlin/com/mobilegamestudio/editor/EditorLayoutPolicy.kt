package com.mobilegamestudio.editor

internal enum class EditorLayoutMode {
    COMPACT,
    EXPANDED,
}

/**
 * Chooses the editor structure from usable dp, after system insets. Raw pixel
 * counts and device names are intentionally ignored.
 */
internal object EditorLayoutPolicy {
    fun forUsableSize(widthDp: Float, heightDp: Float): EditorLayoutMode =
        if (
            widthDp >= EditorPanelSizes.ExpandedMinWidth.value &&
            heightDp >= EditorPanelSizes.ExpandedMinHeight.value
        ) {
            EditorLayoutMode.EXPANDED
        } else {
            EditorLayoutMode.COMPACT
        }
}
