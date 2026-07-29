package com.mobilegamestudio.app

import android.content.Context
import android.util.Log
import com.mobilegamestudio.core.common.StudioLogger
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.projects.createProjectContentRepository
import com.mobilegamestudio.projects.createProjectRepository

class AppContainer(context: Context) {
    private val logger = AndroidStudioLogger()
    val projectRepository: ProjectRepository = createProjectRepository(context, logger)
    val projectContentRepository: ProjectContentRepository = createProjectContentRepository(context)
}

private class AndroidStudioLogger : StudioLogger {
    override fun info(event: String, attributes: Map<String, String>) {
        Log.i(TAG, format(event, attributes))
    }

    override fun error(
        event: String,
        throwable: Throwable,
        attributes: Map<String, String>,
    ) {
        Log.e(TAG, format(event, attributes), throwable)
    }

    private fun format(event: String, attributes: Map<String, String>): String =
        buildString {
            append(event)
            attributes.toSortedMap().forEach { (key, value) ->
                append(' ')
                append(key)
                append('=')
                append(value)
            }
        }

    companion object {
        private const val TAG = "MobileGameStudio"
    }
}
