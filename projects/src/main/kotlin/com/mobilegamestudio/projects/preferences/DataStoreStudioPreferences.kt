package com.mobilegamestudio.projects.preferences

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.mobilegamestudio.core.contracts.StudioPreferences
import com.mobilegamestudio.core.model.ProjectId
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

private val Context.studioDataStore by preferencesDataStore(
    name = "studio_preferences",
    corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
)

class DataStoreStudioPreferences(context: Context) : StudioPreferences {
    private val dataStore = context.applicationContext.studioDataStore

    override val lastOpenedProjectId: Flow<ProjectId?> =
        dataStore.data.map { preferences ->
            preferences[LAST_OPENED_PROJECT]
                ?.takeIf(com.mobilegamestudio.projects.files.ProjectFileStore::isSafeProjectId)
                ?.let(::ProjectId)
        }

    override suspend fun setLastOpenedProject(id: ProjectId) {
        dataStore.edit { preferences ->
            preferences[LAST_OPENED_PROJECT] = id.value
        }
    }

    companion object {
        private val LAST_OPENED_PROJECT = stringPreferencesKey("last_opened_project")
    }
}
