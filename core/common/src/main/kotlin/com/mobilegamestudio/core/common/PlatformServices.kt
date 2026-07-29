package com.mobilegamestudio.core.common

import java.util.UUID

fun interface StudioClock {
    fun nowEpochMillis(): Long
}

fun interface ProjectIdGenerator {
    fun nextId(): String
}

interface StudioLogger {
    fun info(event: String, attributes: Map<String, String> = emptyMap())
    fun error(event: String, throwable: Throwable, attributes: Map<String, String> = emptyMap())
}

object SystemStudioClock : StudioClock {
    override fun nowEpochMillis(): Long = System.currentTimeMillis()
}

object UuidProjectIdGenerator : ProjectIdGenerator {
    override fun nextId(): String = UUID.randomUUID().toString()
}

object SilentStudioLogger : StudioLogger {
    override fun info(event: String, attributes: Map<String, String>) = Unit
    override fun error(event: String, throwable: Throwable, attributes: Map<String, String>) = Unit
}

