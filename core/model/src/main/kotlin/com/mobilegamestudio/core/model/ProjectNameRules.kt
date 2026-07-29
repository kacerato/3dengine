package com.mobilegamestudio.core.model

object ProjectNameRules {
    const val MAX_LENGTH = 64
    private val forbiddenCharacters = setOf('\\', '/', ':', '*', '?', '"', '<', '>', '|')

    fun normalize(name: String): ProjectResult<String> {
        val normalized = name.trim().replace(Regex("\\s+"), " ")
        val reason = when {
            normalized.isEmpty() -> "Informe um nome para o projeto."
            normalized.length > MAX_LENGTH -> "Use no máximo $MAX_LENGTH caracteres."
            normalized.any(Char::isISOControl) -> "O nome contém caracteres de controle."
            normalized.any(forbiddenCharacters::contains) ->
                "O nome não pode conter \\, /, :, *, ?, \", <, > ou |."
            normalized == "." || normalized == ".." -> "Escolha um nome mais descritivo."
            else -> null
        }

        return if (reason == null) {
            ProjectResult.Success(normalized)
        } else {
            ProjectResult.Failure(ProjectError.InvalidName(reason))
        }
    }
}

