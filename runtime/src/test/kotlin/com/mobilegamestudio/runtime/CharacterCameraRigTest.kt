package com.mobilegamestudio.runtime

import com.mobilegamestudio.core.model.CharacterCameraMode
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class CharacterCameraRigTest {
    @Test
    fun thirdPersonCameraFollowsPlayerPosition() {
        val controller = CharacterControllerComponent(
            cameraMode = CharacterCameraMode.THIRD_PERSON,
            cameraDistance = 5f,
            cameraHeight = 1.6f,
        )
        val first = computeCharacterCameraPose(
            TransformComponent(position = Vector3(0f, 2f, 0f)),
            controller,
        )
        val moved = computeCharacterCameraPose(
            TransformComponent(position = Vector3(4f, 2f, -3f)),
            controller,
        )
        assertEquals(4f, moved.target.x - first.target.x, 0.0001f)
        assertEquals(-3f, moved.target.z - first.target.z, 0.0001f)
        assertEquals(4f, moved.eye.x - first.eye.x, 0.0001f)
        assertEquals(-3f, moved.eye.z - first.eye.z, 0.0001f)
    }

    @Test
    fun thirdPersonLookChangesCameraOrbitWithoutLosingFocus() {
        val controller = CharacterControllerComponent(
            cameraMode = CharacterCameraMode.THIRD_PERSON,
            cameraDistance = 4.8f,
            cameraHeight = 1.55f,
        )
        val forward = computeCharacterCameraPose(
            TransformComponent(position = Vector3(1f, 1f, 1f), rotationEulerDegrees = Vector3(0f, 0f, 0f)),
            controller,
        )
        val turned = computeCharacterCameraPose(
            TransformComponent(position = Vector3(1f, 1f, 1f), rotationEulerDegrees = Vector3(-12f, 90f, 0f)),
            controller,
        )
        assertEquals(forward.target, turned.target)
        assertTrue(kotlin.math.abs(forward.eye.x - turned.eye.x) > 1f)
        assertTrue(kotlin.math.abs(forward.eye.z - turned.eye.z) > 1f)
    }
}
