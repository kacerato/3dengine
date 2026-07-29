package com.mobilegamestudio.projects.files

import com.mobilegamestudio.core.model.ProjectError
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectMetadata
import com.mobilegamestudio.core.model.ProjectResult
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProjectMetadataCodecTest {
    private val codec = ProjectMetadataCodec()

    @Test
    fun `round trip preserves unicode metadata`() {
        val metadata = ProjectMetadata(
            format = ProjectFileStore.PROJECT_FORMAT,
            schemaVersion = ProjectFileStore.CURRENT_SCHEMA_VERSION,
            id = ProjectId("a1b2c3"),
            name = "Cidade São Luís",
            createdAtEpochMillis = 100,
            updatedAtEpochMillis = 200,
            revision = 3,
            engineVersion = "0.1.0",
            startScene = "scenes/main.scene",
        )

        assertEquals(ProjectResult.Success(metadata), codec.decode(codec.encode(metadata)))
    }

    @Test
    fun `rejects malformed oversized and future metadata`() {
        assertEquals(
            ProjectResult.Failure(ProjectError.CorruptedMetadata),
            codec.decode("{not-json".toByteArray()),
        )
        assertEquals(
            ProjectResult.Failure(ProjectError.CorruptedMetadata),
            codec.decode(ByteArray(ProjectMetadataCodec.MAX_METADATA_BYTES + 1)),
        )

        val future = """
            {
              "format": "mobile-game-studio",
              "schemaVersion": 99,
              "id": "safe-id",
              "name": "Futuro",
              "createdAtEpochMillis": 1,
              "updatedAtEpochMillis": 1,
              "revision": 1,
              "engineVersion": "99"
            }
        """.trimIndent().toByteArray()
        val result = codec.decode(future)

        assertTrue(result is ProjectResult.Failure)
        assertEquals(
            ProjectError.UnsupportedSchemaVersion(
                found = 99,
                supported = ProjectFileStore.CURRENT_SCHEMA_VERSION,
            ),
            (result as ProjectResult.Failure).error,
        )
    }

    @Test
    fun `rejects unsafe scene path and revision overflow`() {
        fun encoded(startScene: String?, revision: Long) = """
            {
              "format": "mobile-game-studio",
              "schemaVersion": 1,
              "id": "safe-id",
              "name": "Jogo",
              "createdAtEpochMillis": 1,
              "updatedAtEpochMillis": 1,
              "revision": $revision,
              "engineVersion": "1",
              "startScene": ${startScene?.let { "\"$it\"" } ?: "null"}
            }
        """.trimIndent().toByteArray()

        assertEquals(
            ProjectResult.Failure(ProjectError.CorruptedMetadata),
            codec.decode(encoded("../outside.scene", 1)),
        )
        assertEquals(
            ProjectResult.Failure(ProjectError.CorruptedMetadata),
            codec.decode(encoded(null, Long.MAX_VALUE)),
        )
    }
}
