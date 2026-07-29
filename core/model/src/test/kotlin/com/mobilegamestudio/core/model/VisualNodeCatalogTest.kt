package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class VisualNodeCatalogTest {
    @Test
    fun `catalog is broader than current ITsMagic documentation`() {
        assertTrue(
            VisualNodeCatalog.definitions.size >
                VisualNodeCatalog.ITSMAGIC_CURRENT_DOCUMENTED_NODE_PAGES,
        )
    }

    @Test
    fun `catalog ids are unique and every node exposes a useful port`() {
        val definitions = VisualNodeCatalog.definitions
        assertEquals(definitions.size, definitions.map { it.id }.distinct().size)
        assertTrue(definitions.all { it.inputs.isNotEmpty() || it.outputs.isNotEmpty() })
    }

    @Test
    fun `all engine systems are represented`() {
        assertEquals(
            VisualNodeCategory.entries.toSet(),
            VisualNodeCatalog.definitions.map { it.category }.toSet(),
        )
    }
}
