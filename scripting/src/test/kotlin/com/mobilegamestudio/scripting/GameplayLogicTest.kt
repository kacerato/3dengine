package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.MountainDemoScene
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.core.model.VisualConnection
import com.mobilegamestudio.core.model.VisualGraphDocument
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class GameplayLogicTest {
    @Test
    fun `starter lua receives mobile control events`() {
        val host = FakeHost()
        val session = LuaSceneSession(host)

        assertTrue(session.load("scripts/rotate.lua", MountainDemoScene.LUA_SOURCE) is LogicExecutionResult.Success)
        assertTrue(session.emitEvent("jump") is LogicExecutionResult.Success)

        assertTrue(host.logs.any { "Jump requested" in it })
    }

    @Test
    fun `sandbox does not expose filesystem process package or java bridge`() {
        val host = FakeHost()
        val session = LuaSceneSession(host)
        val source = """
            assert(io == nil)
            assert(os == nil)
            assert(package == nil)
            assert(debug == nil)
            assert(luajava == nil)
        """.trimIndent()

        assertTrue(session.load("sandbox.lua", source) is LogicExecutionResult.Success)
    }

    @Test
    fun `instruction budget interrupts infinite loop`() {
        val session = LuaSceneSession(FakeHost(), maxInstructions = 2_000, maxExecutionMillis = 100)

        val result = session.load("loop.lua", "while true do end")

        assertTrue(result is LogicExecutionResult.Failure)
        assertTrue((result as LogicExecutionResult.Failure).diagnostic.message.contains("Limite"))
    }

    @Test
    fun `visual graph executes on same scene host`() {
        val host = FakeHost()
        val executor = VisualGraphExecutor(host)

        val result = executor.emitButton(MountainDemoScene.graph(), "jump")

        assertTrue(result is LogicExecutionResult.Success)
        assertTrue(host.didJump)
        assertEquals("Walk", host.playedClip)
    }

    @Test
    fun `touch graph only runs for its bound object`() {
        val host = FakeHost()
        val graph = VisualGraphDocument(
            graphId = "touch-graph",
            name = "Touch graph",
            nodes = listOf(
                VisualNode(
                    "touch",
                    VisualNodeType.ON_TOUCH,
                    objectId = "rotating-cube",
                    objectName = "OldName",
                ),
                VisualNode(
                    "rotate",
                    VisualNodeType.ROTATE_OBJECT,
                    objectId = "rotating-cube",
                    objectName = "OldName",
                    numberValue = 45f,
                ),
            ),
            connections = listOf(VisualConnection("touch", "rotate")),
        )
        val executor = VisualGraphExecutor(host)

        assertTrue(executor.emitTouch(graph, "other-object") is LogicExecutionResult.Success)
        assertEquals(Vector3.ZERO, host.rotations.getValue("rotating-cube"))

        assertTrue(executor.emitTouch(graph, "rotating-cube") is LogicExecutionResult.Success)
        assertEquals(45f, host.rotations.getValue("rotating-cube").y)
    }

    @Test
    fun `failed lua load rolls back callbacks registered before the error`() {
        val host = FakeHost()
        val session = LuaSceneSession(host)
        val result = session.load(
            "broken.lua",
            """
                local cube = Scene:GetObject("RotatingCube")
                cube.OnTouch:Connect(function()
                    cube.Transform.rotationY = 90
                end)
                error("falha depois do callback")
            """.trimIndent(),
        )

        assertTrue(result is LogicExecutionResult.Failure)
        assertTrue(session.emitTouch("rotating-cube") is LogicExecutionResult.Success)
        assertEquals(Vector3.ZERO, host.rotations.getValue("rotating-cube"))
    }

    @Test
    fun `lua and nocode exchange named events through the runtime bridge`() {
        val host = FakeHost()
        val emitted = mutableListOf<Pair<String, Any?>>()
        val session = LuaSceneSession(host) { name, value ->
            emitted += name to value
            LogicExecutionResult.Success
        }
        val source = """
            Scene:OnEvent("from_nocode", function(value)
                Log.info("Lua recebeu " .. value)
            end)
            Scene:EmitEvent("from_lua", 42)
        """.trimIndent()

        assertTrue(session.load("bridge.lua", source) is LogicExecutionResult.Success)
        assertEquals("from_lua", emitted.single().first)
        assertEquals(42.0, emitted.single().second)
        assertTrue(session.emitEvent("from_nocode", "ok") is LogicExecutionResult.Success)
        assertTrue(host.logs.any { "Lua recebeu ok" in it })
    }

    private class FakeHost : LogicSceneHost {
        val rotations = mutableMapOf("rotating-cube" to Vector3.ZERO)
        val scales = mutableMapOf("rotating-cube" to Vector3.ONE)
        val logs = mutableListOf<String>()
        var didJump = false
        var playedClip: String? = null

        override fun findObjectIdByName(name: String): String? =
            when (name) {
                "RotatingCube" -> "rotating-cube"
                "First Person Player" -> "fps-player"
                else -> null
            }

        override fun rotation(objectId: String): Vector3? = rotations[objectId]
        override fun scale(objectId: String): Vector3? = scales[objectId]

        override fun setRotation(objectId: String, rotation: Vector3): Boolean {
            rotations[objectId] = rotation
            return true
        }

        override fun setScale(objectId: String, scale: Vector3): Boolean {
            scales[objectId] = scale
            return true
        }

        override fun jump(objectId: String): Boolean {
            didJump = objectId == "fps-player"
            return didJump
        }

        override fun playAnimation(objectId: String, clip: String, loop: Boolean): Boolean {
            if (objectId != "fps-player") return false
            playedClip = clip
            return true
        }

        override fun log(level: LogicLogLevel, message: String) {
            logs += message
        }
    }
}
