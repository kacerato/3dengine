package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProjectNameRulesTest {
    @Test
    fun `normalizes surrounding and repeated whitespace`() {
        val result = ProjectNameRules.normalize("  Meu   Jogo  ")

        assertEquals(ProjectResult.Success("Meu Jogo"), result)
    }

    @Test
    fun `rejects empty long and path-like names`() {
        assertTrue(ProjectNameRules.normalize("   ") is ProjectResult.Failure)
        assertTrue(
            ProjectNameRules.normalize("a".repeat(ProjectNameRules.MAX_LENGTH + 1)) is
                ProjectResult.Failure,
        )
        assertTrue(ProjectNameRules.normalize("../jogo") is ProjectResult.Failure)
        assertTrue(ProjectNameRules.normalize("jogo\u0000") is ProjectResult.Failure)
    }
}

