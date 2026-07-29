package com.mobilegamestudio.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class VehiclePhysicsTest {
    private val vehicle = VehicleControllerComponent(
        massKg = 1530f,
        enginePowerKw = 447f,
        maxTorqueNm = 760f,
        topSpeedKph = 285f,
        driveType = VehicleDriveType.REAR_WHEEL_DRIVE,
        wheelBaseMeters = 2.51f,
        trackWidthMeters = 1.55f,
        wheelRadiusMeters = 0.34f,
        wheels = VehicleWheelDefinition.standardLayout(2.51f, 1.55f, 0.34f, rearWheelDrive = true),
    )

    @Test
    fun throttleAcceleratesAndAutomaticGearboxShifts() {
        var state = VehicleRuntimeState()
        var transform = TransformComponent(position = Vector3(0f, 0.5f, 0f))
        repeat(500) {
            val result = VehiclePhysics.step(
                vehicle,
                state,
                VehicleControlInput(throttle = 1f),
                transform,
                0.02f,
            ) { _, _ -> 0f }
            state = result.state
            transform = transform.copy(position = result.position, rotationEulerDegrees = result.rotationEulerDegrees)
        }
        assertTrue(state.longitudinalSpeedMetersPerSecond > 10f)
        assertTrue(state.gear > 1)
        assertTrue(transform.position.z > 20f)
    }

    @Test
    fun brakeStopsWithoutCrossingIntoReverse() {
        var state = VehicleRuntimeState(longitudinalSpeedMetersPerSecond = 20f)
        var transform = TransformComponent(position = Vector3(0f, 0.5f, 0f))
        repeat(200) {
            val result = VehiclePhysics.step(
                vehicle,
                state,
                VehicleControlInput(brake = 1f),
                transform,
                0.02f,
            ) { _, _ -> 0f }
            state = result.state
            transform = transform.copy(position = result.position, rotationEulerDegrees = result.rotationEulerDegrees)
        }
        assertEquals(0f, state.longitudinalSpeedMetersPerSecond, 0.05f)
    }

    @Test
    fun suspensionFollowsGroundAndSteeringChangesYaw() {
        var state = VehicleRuntimeState(longitudinalSpeedMetersPerSecond = 12f)
        var transform = TransformComponent(position = Vector3(0f, 0.5f, 0f))
        repeat(50) {
            val result = VehiclePhysics.step(
                vehicle,
                state,
                VehicleControlInput(steering = 0.7f, throttle = 0.2f),
                transform,
                0.02f,
            ) { x, _ -> x * 0.04f }
            state = result.state
            transform = transform.copy(position = result.position, rotationEulerDegrees = result.rotationEulerDegrees)
        }
        assertTrue(transform.rotationEulerDegrees.y > 1f)
        assertTrue(transform.rotationEulerDegrees.z.isFinite())
        assertEquals(4, state.suspensionCompression.size)
    }
}
