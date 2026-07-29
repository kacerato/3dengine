package com.mobilegamestudio.core.model

object SafeProjectPath {
    const val MAX_LENGTH = 240

    fun isValidRelativePath(value: String): Boolean {
        if (
            value.isBlank() ||
            value.length > MAX_LENGTH ||
            value.startsWith('/') ||
            '\\' in value ||
            ':' in value ||
            value.any(Char::isISOControl)
        ) {
            return false
        }
        return value.split('/').all { segment ->
            segment.isNotEmpty() && segment != "." && segment != ".."
        }
    }
}

