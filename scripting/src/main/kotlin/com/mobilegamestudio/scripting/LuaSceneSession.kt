package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.Vector3
import java.util.concurrent.atomic.AtomicBoolean
import org.luaj.vm2.Globals
import org.luaj.vm2.LuaError
import org.luaj.vm2.LuaFunction
import org.luaj.vm2.LuaTable
import org.luaj.vm2.LuaValue
import org.luaj.vm2.Varargs
import org.luaj.vm2.compiler.LuaC
import org.luaj.vm2.lib.BaseLib
import org.luaj.vm2.lib.DebugLib
import org.luaj.vm2.lib.MathLib
import org.luaj.vm2.lib.OneArgFunction
import org.luaj.vm2.lib.PackageLib
import org.luaj.vm2.lib.StringLib
import org.luaj.vm2.lib.TableLib
import org.luaj.vm2.lib.ThreeArgFunction
import org.luaj.vm2.lib.TwoArgFunction
import org.luaj.vm2.lib.VarArgFunction
import org.luaj.vm2.LoadState

/**
 * Actual Lua 5.2 interpreter session backed by LuaJ. Only capability objects are
 * exposed; file, network, process, reflection, package and debug APIs are absent.
 */
class LuaSceneSession(
    private val host: LogicSceneHost,
    private val maxInstructions: Int = 200_000,
    private val maxExecutionMillis: Long = 100,
    private val onEmitEvent: (String, Any?) -> LogicExecutionResult = { _, _ ->
        LogicExecutionResult.Success
    },
) {
    private val globals = Globals()
    private val budget = BudgetDebugLib(maxInstructions, maxExecutionMillis)
    private val callbacks = mutableMapOf<String, MutableList<LuaFunction>>()
    private val eventCallbacks = mutableMapOf<String, MutableList<LuaFunction>>()
    private var callbackCount = 0
    private val stopped = AtomicBoolean(false)

    init {
        globals.load(BaseLib())
        globals.load(PackageLib())
        globals.load(TableLib())
        globals.load(StringLib())
        globals.load(MathLib())
        LoadState.install(globals)
        LuaC.install(globals)
        globals.load(budget)
        globals.set("debug", LuaValue.NIL)
        globals.set("dofile", LuaValue.NIL)
        globals.set("loadfile", LuaValue.NIL)
        globals.set("load", LuaValue.NIL)
        globals.set("collectgarbage", LuaValue.NIL)
        globals.set("require", LuaValue.NIL)
        globals.set("package", LuaValue.NIL)
        globals.set("io", LuaValue.NIL)
        globals.set("os", LuaValue.NIL)
        globals.set("luajava", LuaValue.NIL)
        globals.get("string").takeIf(LuaValue::istable)?.set("rep", LuaValue.NIL)
        globals.set("Scene", createSceneApi())
        globals.set("Log", createLogApi())
    }

    @Synchronized
    fun load(path: String, source: String): LogicExecutionResult {
        if (source.encodeToByteArray().size > MAX_SOURCE_BYTES) {
            return failure(path, "Script excede 256 KiB.", null)
        }
        if (stopped.get()) return failure(path, "Sessão Lua encerrada.", null)
        val callbackSizes = callbacks.mapValues { (_, values) -> values.size }
        val eventCallbackSizes = eventCallbacks.mapValues { (_, values) -> values.size }
        val previousCallbackCount = callbackCount
        val result = execute(path) {
            globals.load(source, "@$path").call()
        }
        if (result is LogicExecutionResult.Failure) {
            callbacks.entries.toList().forEach { (objectId, values) ->
                val previousSize = callbackSizes[objectId] ?: 0
                while (values.size > previousSize) values.removeLast()
                if (values.isEmpty() && objectId !in callbackSizes) callbacks.remove(objectId)
            }
            eventCallbacks.entries.toList().forEach { (eventName, values) ->
                val previousSize = eventCallbackSizes[eventName] ?: 0
                while (values.size > previousSize) values.removeLast()
                if (values.isEmpty() && eventName !in eventCallbackSizes) eventCallbacks.remove(eventName)
            }
            callbackCount = previousCallbackCount
        }
        return result
    }

    @Synchronized
    fun emitTouch(objectId: String): LogicExecutionResult {
        if (stopped.get()) return failure("<runtime>", "Sessão Lua encerrada.", null)
        val functions = callbacks[objectId]?.toList().orEmpty()
        return execute("<touch:$objectId>") {
            functions.forEach(LuaFunction::call)
        }
    }

    @Synchronized
    fun emitEvent(eventName: String, value: Any? = null): LogicExecutionResult {
        if (stopped.get()) return failure("<runtime>", "Sessão Lua encerrada.", null)
        val functions = eventCallbacks[eventName]?.toList().orEmpty()
        return execute("<event:$eventName>") {
            val luaValue = value.toLuaValue()
            functions.forEach { callback -> callback.call(luaValue) }
        }
    }

    @Synchronized
    fun stop() {
        stopped.set(true)
        callbacks.clear()
        eventCallbacks.clear()
        callbackCount = 0
    }

    private fun createSceneApi(): LuaTable = LuaTable().apply {
        set("GetObject", object : VarArgFunction() {
            override fun invoke(args: Varargs): Varargs {
                val name = args.arg(args.narg()).checkjstring()
                val objectId = host.findObjectIdByName(name)
                    ?: throw LuaError("Objeto não encontrado: $name")
                return createObjectApi(objectId)
            }
        })
        set("EmitEvent", object : VarArgFunction() {
            override fun invoke(args: Varargs): Varargs {
                val offset = if (args.arg1().istable()) 1 else 0
                val name = args.arg(1 + offset).checkjstring().take(MAX_EVENT_NAME_LENGTH)
                if (name.isBlank()) throw LuaError("Nome do evento ausente.")
                val value = args.arg(2 + offset).takeUnless(LuaValue::isnil)?.toHostValue()
                when (val result = onEmitEvent(name, value)) {
                    LogicExecutionResult.Success -> Unit
                    is LogicExecutionResult.Failure -> throw LuaError(result.diagnostic.message)
                }
                return LuaValue.NONE
            }
        })
        set("OnEvent", object : VarArgFunction() {
            override fun invoke(args: Varargs): Varargs {
                val offset = if (args.arg1().istable()) 1 else 0
                val name = args.arg(1 + offset).checkjstring().take(MAX_EVENT_NAME_LENGTH)
                val callback = args.arg(2 + offset).checkfunction()
                if (name.isBlank()) throw LuaError("Nome do evento ausente.")
                if (callbackCount >= MAX_CALLBACKS) throw LuaError("Limite de callbacks Lua excedido.")
                eventCallbacks.getOrPut(name, ::mutableListOf) += callback
                callbackCount += 1
                return LuaValue.NONE
            }
        })
    }

    private fun createObjectApi(objectId: String): LuaTable = LuaTable().apply {
        set("Transform", createTransformApi(objectId))
        set("Vehicle", createVehicleApi(objectId))
        set("OnTouch", LuaTable().apply {
            set("Connect", object : VarArgFunction() {
                override fun invoke(args: Varargs): Varargs {
                    val callback = args.arg(args.narg()).checkfunction()
                    if (callbackCount >= MAX_CALLBACKS) {
                        throw LuaError("Limite de callbacks Lua excedido.")
                    }
                    callbacks.getOrPut(objectId, ::mutableListOf) += callback
                    callbackCount += 1
                    return LuaValue.NONE
                }
            })
        })
    }

    private fun createVehicleApi(objectId: String): LuaTable = LuaTable().apply {
        listOf(
            "Enter" to "enter",
            "Exit" to "exit",
            "OpenDoor" to "open_door",
            "CloseDoor" to "close_door",
            "ToggleDoor" to "toggle_door",
            "ResetUpright" to "reset_upright",
        ).forEach { (luaName, operation) ->
            set(luaName, object : VarArgFunction() {
                override fun invoke(args: Varargs): Varargs {
                    val result = host.vehicleAction(objectId, operation)
                        ?: throw LuaError("Operação Vehicle.$luaName indisponível.")
                    return result.toLuaValue()
                }
            })
        }
        listOf(
            "SetThrottle" to "set_throttle",
            "SetBrake" to "set_brake",
            "SetSteering" to "set_steering",
            "SetHandbrake" to "set_handbrake",
            "SetMass" to "set_mass",
            "SetEnginePower" to "set_engine_power",
            "SetMaxTorque" to "set_max_torque",
            "SetTireGrip" to "set_tire_grip",
            "SetSuspensionTravel" to "set_suspension_travel",
            "SetSpringStrength" to "set_spring_strength",
            "SetSuspensionDamping" to "set_suspension_damping",
        ).forEach { (luaName, operation) ->
            set(luaName, object : VarArgFunction() {
                override fun invoke(args: Varargs): Varargs {
                    val number = args.arg(args.narg()).checkdouble().toFloat()
                    val result = host.vehicleAction(objectId, operation, number)
                        ?: throw LuaError("Operação Vehicle.$luaName indisponível.")
                    return result.toLuaValue()
                }
            })
        }
        listOf(
            "GetSpeed" to "get_speed",
            "GetRpm" to "get_rpm",
            "GetGear" to "get_gear",
            "GetSuspensionCompression" to "get_suspension_compression",
        ).forEach { (luaName, operation) ->
            set(luaName, object : VarArgFunction() {
                override fun invoke(args: Varargs): Varargs =
                    host.vehicleAction(objectId, operation)?.toLuaValue()
                        ?: throw LuaError("Operação Vehicle.$luaName indisponível.")
            })
        }
    }

    private fun createTransformApi(objectId: String): LuaTable {
        val table = LuaTable()
        val metatable = LuaTable()
        metatable.set("__index", object : TwoArgFunction() {
            override fun call(tableValue: LuaValue, key: LuaValue): LuaValue {
                val transform = host.rotation(objectId) ?: throw LuaError("Transform indisponível.")
                return when (key.checkjstring()) {
                    "rotationX" -> LuaValue.valueOf(transform.x.toDouble())
                    "rotationY" -> LuaValue.valueOf(transform.y.toDouble())
                    "rotationZ" -> LuaValue.valueOf(transform.z.toDouble())
                    else -> LuaValue.NIL
                }
            }
        })
        metatable.set("__newindex", object : ThreeArgFunction() {
            override fun call(tableValue: LuaValue, key: LuaValue, value: LuaValue): LuaValue {
                val current = host.rotation(objectId) ?: throw LuaError("Transform indisponível.")
                val number = value.checkdouble().toFloat()
                if (!number.isFinite()) throw LuaError("Transform não aceita NaN ou infinito.")
                val updated = when (key.checkjstring()) {
                    "rotationX" -> current.copy(x = number)
                    "rotationY" -> current.copy(y = number)
                    "rotationZ" -> current.copy(z = number)
                    else -> throw LuaError("Propriedade Transform desconhecida.")
                }
                if (!host.setRotation(objectId, updated)) throw LuaError("Falha ao atualizar Transform.")
                return LuaValue.NONE
            }
        })
        table.setmetatable(metatable)
        return table
    }

    private fun createLogApi(): LuaTable = LuaTable().apply {
        set("info", logFunction(LogicLogLevel.INFO))
        set("warning", logFunction(LogicLogLevel.WARNING))
        set("error", logFunction(LogicLogLevel.ERROR))
    }

    private fun logFunction(level: LogicLogLevel) = object : VarArgFunction() {
        override fun invoke(args: Varargs): Varargs {
            host.log(level, args.arg(args.narg()).tojstring())
            return LuaValue.NONE
        }
    }

    private fun execute(path: String, operation: () -> Unit): LogicExecutionResult {
        budget.begin()
        return try {
            operation()
            LogicExecutionResult.Success
        } catch (error: LuaError) {
            val raw = error.message ?: "Erro Lua."
            val line = LINE_PATTERN.find(raw)?.groupValues?.getOrNull(1)?.toIntOrNull()
            failure(path, sanitize(raw), line)
        } catch (throwable: RuntimeException) {
            failure(path, sanitize(throwable.message ?: "Falha no interpretador Lua."), null)
        }
    }

    private fun failure(path: String, message: String, line: Int?): LogicExecutionResult.Failure =
        LogicExecutionResult.Failure(
            ScriptDiagnostic(
                severity = DiagnosticSeverity.ERROR,
                message = "$path: $message",
                line = line,
                column = null,
            ),
        )

    private fun sanitize(value: String): String =
        value.replace(Regex("""[A-Za-z]:[\\/][^:\n]+"""), "<path>").take(500)

    private fun Any?.toLuaValue(): LuaValue = when (this) {
        null -> LuaValue.NIL
        is Boolean -> LuaValue.valueOf(this)
        is Number -> LuaValue.valueOf(toDouble())
        else -> LuaValue.valueOf(toString())
    }

    private fun LuaValue.toHostValue(): Any? = when {
        isnil() -> null
        isboolean() -> toboolean()
        isnumber() -> todouble()
        isstring() -> tojstring().take(MAX_EVENT_VALUE_LENGTH)
        else -> tojstring().take(MAX_EVENT_VALUE_LENGTH)
    }

    private class BudgetDebugLib(
        private val instructionLimit: Int,
        private val timeLimitMillis: Long,
    ) : DebugLib() {
        private var instructions = 0
        private var deadlineNanos = 0L

        fun begin() {
            instructions = 0
            deadlineNanos = System.nanoTime() + timeLimitMillis * 1_000_000L
        }

        override fun onInstruction(pc: Int, v: Varargs, top: Int) {
            instructions += 1
            if (instructions > instructionLimit || System.nanoTime() > deadlineNanos) {
                throw LuaError("Limite de execução do script excedido.")
            }
            super.onInstruction(pc, v, top)
        }
    }

    companion object {
        const val MAX_SOURCE_BYTES = 256 * 1024
        const val MAX_CALLBACKS = 128
        const val MAX_EVENT_NAME_LENGTH = 64
        const val MAX_EVENT_VALUE_LENGTH = 300
        private val LINE_PATTERN = Regex(""":(\d+):""")
    }
}
