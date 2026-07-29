package com.mobilegamestudio.core.model

import org.junit.Assert.assertTrue
import org.junit.Test

class VisualNodeDocumentationTest {
    @Test
    fun everyNoCodeNodeHasCompleteGeneratedDocumentation() {
        assertTrue(VisualNodeCatalog.definitions.size > 800)
        VisualNodeCatalog.definitions.forEach { definition ->
            val docs = definition.documentation
            assertTrue("${definition.id} sem resumo", docs.summary.isNotBlank())
            assertTrue("${definition.id} sem exemplo", docs.example.isNotBlank())
            assertTrue(docs.inputs.size == definition.inputs.size)
            assertTrue(docs.outputs.size == definition.outputs.size)
            assertTrue((docs.inputs + docs.outputs).all { it.description.isNotBlank() })
        }
    }
}
