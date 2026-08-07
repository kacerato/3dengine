package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class EngineApiRegistryTest {
    @Test
    fun `catalog ids and aliases resolve to one canonical contract`() {
        val registry = EngineApiCatalog.registry

        val canonical = requireNotNull(registry.resolve("scene.find_object"))
        val alias = requireNotNull(registry.resolve("Scene.GetObject"))

        assertEquals(canonical, alias)
        assertEquals("scene.find_object", canonical.id)
        assertTrue(EngineApiSurface.NOCODE in canonical.surfaces)
        assertTrue(EngineApiSurface.LUA in canonical.surfaces)
        assertTrue(EngineApiSurface.JAVA in canonical.surfaces)
        assertTrue(EngineApiSurface.PYTHON in canonical.surfaces)
    }

    @Test
    fun `physics trace is honest contract only until backend is wired`() {
        val trace = requireNotNull(EngineApiCatalog.registry.resolve("physics.trace_ray"))

        assertEquals(EngineApiAvailability.CONTRACT_ONLY, trace.availability)
        assertEquals(EngineApiThread.PHYSICS, trace.thread)
        assertTrue(EngineApiCapability.PHYSICS_QUERY in trace.capabilities)
        assertNotNull(trace.parameters.firstOrNull { it.name == "origin" })
    }

    @Test
    fun `registry rejects duplicate canonical ids`() {
        val function = EngineApiFunction(
            id = "test.echo",
            namespace = "test",
            name = "echo",
        )
        var failed = false

        try {
            EngineApiRegistry(listOf(function, function.copy()))
        } catch (_: IllegalArgumentException) {
            failed = true
        }

        assertTrue(failed)
    }

    @Test
    fun `registry rejects aliases colliding with canonical ids`() {
        val first = EngineApiFunction(
            id = "test.first",
            namespace = "test",
            name = "first",
        )
        val second = EngineApiFunction(
            id = "test.second",
            namespace = "test",
            name = "second",
            aliases = setOf("test.first"),
        )
        var failed = false

        try {
            EngineApiRegistry(listOf(first, second))
        } catch (_: IllegalArgumentException) {
            failed = true
        }

        assertTrue(failed)
    }
}
