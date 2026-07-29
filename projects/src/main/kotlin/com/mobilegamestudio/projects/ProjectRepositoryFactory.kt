package com.mobilegamestudio.projects

import android.content.Context
import com.mobilegamestudio.core.common.StudioLogger
import com.mobilegamestudio.core.common.SystemStudioClock
import com.mobilegamestudio.core.common.UuidProjectIdGenerator
import com.mobilegamestudio.core.contracts.ProjectRepository
import com.mobilegamestudio.core.contracts.ProjectContentRepository
import com.mobilegamestudio.projects.content.DefaultProjectContentRepository
import com.mobilegamestudio.projects.catalog.StudioDatabase
import com.mobilegamestudio.projects.files.ProjectFileStore
import com.mobilegamestudio.projects.preferences.DataStoreStudioPreferences
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob

fun createProjectRepository(
    context: Context,
    logger: StudioLogger,
): ProjectRepository {
    val applicationContext = context.applicationContext
    val database = StudioDatabase.create(applicationContext)
    val preferences = DataStoreStudioPreferences(applicationContext)
    val ioDispatcher = Dispatchers.IO
    val maintenanceScope = CoroutineScope(SupervisorJob() + ioDispatcher)
    val fileStore = ProjectFileStore(
        projectsRoot = applicationContext.filesDir.resolve("projects"),
        clock = SystemStudioClock,
        idGenerator = UuidProjectIdGenerator,
    )
    return DefaultProjectRepository(
        fileStore = fileStore,
        catalogDao = database.projectCatalogDao(),
        preferences = preferences,
        clock = SystemStudioClock,
        logger = logger,
        ioDispatcher = ioDispatcher,
        maintenanceScope = maintenanceScope,
    )
}

fun createProjectContentRepository(context: Context): ProjectContentRepository {
    val applicationContext = context.applicationContext
    return DefaultProjectContentRepository(
        projectsRoot = applicationContext.filesDir.resolve("projects"),
        clock = SystemStudioClock,
        ioDispatcher = Dispatchers.IO,
        demoModels = {
            listOf(
                com.mobilegamestudio.projects.content.DemoModelAsset(
                    id = com.mobilegamestudio.core.model.MountainDemoScene.MODEL_ASSET_ID,
                    displayName = "2009 Dodge Viper ACR.glb",
                    relativePath = com.mobilegamestudio.core.model.MountainDemoScene.MODEL_PATH,
                    bytes = applicationContext.resources
                        .openRawResource(com.mobilegamestudio.projects.R.raw.viper_acr)
                        .use { it.readBytes() },
                ),
                com.mobilegamestudio.projects.content.DemoModelAsset(
                    id = com.mobilegamestudio.core.model.MountainDemoScene.CHARACTER_ASSET_ID,
                    displayName = "FoxCharacter.glb",
                    relativePath = com.mobilegamestudio.core.model.MountainDemoScene.CHARACTER_MODEL_PATH,
                    bytes = applicationContext.resources
                        .openRawResource(com.mobilegamestudio.projects.R.raw.fox_character)
                        .use { it.readBytes() },
                ),
            )
        },
    )
}
