package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.ProjectId

/**
 * Runtime-neutral script boundary. No interpreter is claimed in the foundation
 * phase; implementations must enforce their own sandbox before being registered.
 */
interface ScriptingEngine {
    suspend fun prepare(projectId: ProjectId): ScriptResult
    suspend fun validate(source: ScriptSource): List<ScriptDiagnostic>
    suspend fun shutdown()
}

data class ScriptSource(
    val relativePath: String,
    val content: String,
)

data class ScriptDiagnostic(
    val severity: DiagnosticSeverity,
    val message: String,
    val line: Int?,
    val column: Int?,
)

enum class DiagnosticSeverity {
    INFO,
    WARNING,
    ERROR,
}

sealed interface ScriptResult {
    data object Success : ScriptResult
    data class Failure(val message: String) : ScriptResult
}
