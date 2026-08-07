package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ObjectRef
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeSpatialPlayIntegrationTest {
    @Test
    fun `on objects distance emits enter once and exit only past hysteresis`() {
        val a = ObjectRef("player")
        val b = ObjectRef("door")
        val positions = mutableMapOf(
            a to Vector3.ZERO,
            b to Vector3(3f, 0f, 0f),
        )
        val session = NoCodeRuntimeSession(
            spatialQueryHost = ObjectSpatialQueryHost(positions::get),
        )
        val host = LogHost()
        val runtime = NoCodePlayRuntime(host, session)
        val graph = VisualGraphDocument(
            graphId = "distance-asset",
            name = "Distance",
            nodes = listOf(
                VisualNode(
                    id = "range",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.objects_distance",
                    values = mapOf(
                        "a" to a.objectId,
                        "b" to b.objectId,
                        "enterDistance" to "2.0",
                        "exitPadding" to "0.25",
                    ),
                ),
                VisualNode("entered", VisualNodeType.PRINT_LOG, textValue = "enter"),
                VisualNode("stayed", VisualNodeType.PRINT_LOG, textValue = "stay"),
                VisualNode("exited", VisualNodeType.PRINT_LOG, textValue = "exit"),
            ),
            connections = listOf(
                VisualConnection("range", "entered", "enter", "flow"),
                VisualConnection("range", "stayed", "stay", "flow"),
                VisualConnection("range", "exited", "exit", "flow"),
            ),
        )

        val start = runtime.start(
            listOf(NoCodeGraphRuntimeSpec("door-range", graph, sceneId = "world")),
        )
        assertTrue(start.started)
        assertEquals(1, session.spatialRuntime?.watchers?.registeredCount())

        assertEquals(0, runtime.tickSpatial().emittedTransitions)

        positions[b] = Vector3(1.95f, 0f, 0f)
        val enter = runtime.tickSpatial()
        assertTrue(enter.succeeded)
        assertEquals(1, enter.emittedTransitions)
        assertEquals(listOf("enter"), host.logs)

        positions[b] = Vector3(2.10f, 0f, 0f)
        assertEquals(0, runtime.tickSpatial().emittedTransitions)
        assertEquals(listOf("enter"), host.logs)

        positions[b] = Vector3(2.26f, 0f, 0f)
        val exit = runtime.tickSpatial()
        assertTrue(exit.succeeded)
        assertEquals(1, exit.emittedTransitions)
        assertEquals(listOf("enter", "exit"), host.logs)
    }

    @Test
    fun `proximity node refuses startup without spatial backend`() {
        val runtime = NoCodePlayRuntime(LogHost())
        val graph = VisualGraphDocument(
            graphId = "distance-asset",
            name = "Distance",
            nodes = listOf(
                VisualNode(
                    id = "range",
                    type = VisualNodeType.CATALOG,
                    definitionId = "event.objects_distance",
                    values = mapOf(
                        "a" to "player",
                        "b" to "door",
                        "enterDistance" to "2.0",
                    ),
                ),
            ),
            connections = emptyList(),
        )

        val start = runtime.start(listOf(NoCodeGraphRuntimeSpec("range-instance", graph)))

        assertTrue(!start.started)
        assertTrue(start.issues.any { "ObjectSpatialQueryHost" in it.message })
    }

    private class LogHost : LogicSceneHost {
        val logs = mutableListOf<String>()
        override fun findObjectIdByName(name: String): String? = null
        override fun rotation(objectId: String): Vector3? = null
        override fun scale(objectId: String): Vector3? = null
        override fun setRotation(objectId: String, rotation: Vector3): Boolean = false
        override fun setScale(objectId: String, scale: Vector3): Boolean = false
        override fun log(level: LogicLogLevel, message: String) {
            logs += message
        }
    }
}
