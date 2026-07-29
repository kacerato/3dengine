package com.mobilegamestudio.projects.catalog

import android.content.Context
import androidx.room.Dao
import androidx.room.Database
import androidx.room.Entity
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.Transaction
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase
import com.mobilegamestudio.core.model.ProjectMetadata
import kotlinx.coroutines.flow.Flow

@Entity(tableName = "project_catalog", primaryKeys = ["projectId"])
data class ProjectCatalogEntity(
    val projectId: String,
    val relativeDirectory: String,
    val displayName: String,
    val schemaVersion: Int,
    val revision: Long,
    val createdAtEpochMillis: Long,
    val updatedAtEpochMillis: Long,
    val lastOpenedAtEpochMillis: Long?,
) {
    companion object {
        fun from(metadata: ProjectMetadata, lastOpenedAtEpochMillis: Long? = null) =
            ProjectCatalogEntity(
                projectId = metadata.id.value,
                relativeDirectory = metadata.id.value,
                displayName = metadata.name,
                schemaVersion = metadata.schemaVersion,
                revision = metadata.revision,
                createdAtEpochMillis = metadata.createdAtEpochMillis,
                updatedAtEpochMillis = metadata.updatedAtEpochMillis,
                lastOpenedAtEpochMillis = lastOpenedAtEpochMillis,
            )
    }
}

@Dao
interface ProjectCatalogDao {
    @Query("SELECT * FROM project_catalog ORDER BY updatedAtEpochMillis DESC")
    fun observeAll(): Flow<List<ProjectCatalogEntity>>

    @Query("SELECT * FROM project_catalog WHERE projectId = :projectId")
    suspend fun getById(projectId: String): ProjectCatalogEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertUnchecked(entity: ProjectCatalogEntity)

    @Transaction
    suspend fun upsertIfCurrent(entity: ProjectCatalogEntity) {
        val current = getById(entity.projectId)
        when {
            current == null || entity.revision > current.revision -> upsertUnchecked(entity)
            entity.revision == current.revision -> {
                val newestOpenedAt = listOfNotNull(
                    current.lastOpenedAtEpochMillis,
                    entity.lastOpenedAtEpochMillis,
                ).maxOrNull()
                upsertUnchecked(entity.copy(lastOpenedAtEpochMillis = newestOpenedAt))
            }
        }
    }

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertAll(entities: List<ProjectCatalogEntity>)

    @Query("SELECT * FROM project_catalog")
    suspend fun getAll(): List<ProjectCatalogEntity>

    @Query("DELETE FROM project_catalog WHERE projectId IN (:projectIds)")
    suspend fun deleteByIds(projectIds: List<String>)

    @Transaction
    suspend fun reconcile(
        validEntities: List<ProjectCatalogEntity>,
        discoveredProjectIds: Set<String>,
    ) {
        val missingIds = getAll()
            .asSequence()
            .map(ProjectCatalogEntity::projectId)
            .filterNot(discoveredProjectIds::contains)
            .toList()
        if (missingIds.isNotEmpty()) deleteByIds(missingIds)
        if (validEntities.isNotEmpty()) upsertAll(validEntities)
    }
}

@Database(
    entities = [ProjectCatalogEntity::class],
    version = 2,
    exportSchema = true,
)
abstract class StudioDatabase : RoomDatabase() {
    abstract fun projectCatalogDao(): ProjectCatalogDao

    companion object {
        fun create(context: Context): StudioDatabase =
            Room.databaseBuilder(
                context.applicationContext,
                StudioDatabase::class.java,
                "mobile-game-studio.db",
            )
                .addMigrations(MIGRATION_1_2)
                .build()

        private val MIGRATION_1_2 = object : Migration(1, 2) {
            override fun migrate(database: SupportSQLiteDatabase) {
                database.execSQL(
                    "ALTER TABLE project_catalog " +
                        "ADD COLUMN revision INTEGER NOT NULL DEFAULT 1",
                )
            }
        }
    }
}
