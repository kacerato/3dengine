package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.Vector3

interface LogicSceneHost {
    fun findObjectIdByName(name: String): String?
    fun rotation(objectId: String): Vector3?
    fun scale(objectId: String): Vector3?
    fun setRotation(objectId: String, rotation: Vector3): Boolean
    fun setScale(objectId: String, scale: Vector3): Boolean
    fun jump(objectId: String): Boolean = false
    fun playAnimation(objectId: String, clip: String, loop: Boolean = true): Boolean = false
    fun vehicleAction(
        objectId: String?,
        operation: String,
        number: Float? = null,
        text: String? = null,
    ): Any? = null
    fun log(level: LogicLogLevel, message: String)
}

enum class LogicLogLevel {
    INFO,
    WARNING,
    ERROR,
}

sealed interface LogicExecutionResult {
    data object Success : LogicExecutionResult
    data class Failure(val diagnostic: ScriptDiagnostic) : LogicExecutionResult
}
