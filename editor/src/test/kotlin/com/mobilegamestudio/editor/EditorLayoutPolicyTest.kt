package com.mobilegamestudio.editor

import org.junit.Assert.assertEquals
import org.junit.Test

class EditorLayoutPolicyTest {
    @Test
    fun `small landscape phone uses one compact dock`() {
        assertEquals(
            EditorLayoutMode.COMPACT,
            EditorLayoutPolicy.forUsableSize(widthDp = 640f, heightDp = 360f),
        )
    }

    @Test
    fun `wide landscape phone keeps preview-first popup docks`() {
        assertEquals(
            EditorLayoutMode.COMPACT,
            EditorLayoutPolicy.forUsableSize(widthDp = 914f, heightDp = 411f),
        )
    }

    @Test
    fun `large tablet landscape uses expanded docks`() {
        assertEquals(
            EditorLayoutMode.EXPANDED,
            EditorLayoutPolicy.forUsableSize(widthDp = 1280f, heightDp = 800f),
        )
    }

    @Test
    fun `very short window still protects the viewport`() {
        assertEquals(
            EditorLayoutMode.COMPACT,
            EditorLayoutPolicy.forUsableSize(widthDp = 1200f, heightDp = 320f),
        )
    }
}
