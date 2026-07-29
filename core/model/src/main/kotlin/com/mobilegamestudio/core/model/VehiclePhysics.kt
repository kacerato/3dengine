package com.mobilegamestudio.core.model

import kotlin.math.abs
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.sign
import kotlin.math.sin
import kotlin.math.sqrt
import kotlin.math.tan

data class VehicleControlInput(
    val throttle: Float = 0f,
    val brake: Float = 0f,
    val steering: Float = 0f,
    val handbrake: Float = 0f,
)

data class VehicleRuntimeState(
    val longitudinalSpeedMetersPerSecond: Float = 0f,
    val lateralSpeedMetersPerSecond: Float = 0f,
    val steering: Float = 0f,
    val engineRpm: Float = 850f,
    val gear: Int = 1,
    val suspensionCompression: List<Float> = List(4) { 0f },
)

data class VehicleStepResult(
    val state: VehicleRuntimeState,
    val position: Vector3,
    val rotationEulerDegrees: Vector3,
)

/**
 * Deterministic four-wheel road-car simulation used by both Play mode and
 * tests. It models engine/gear torque, braking, aero/rolling loss, a friction
 * circle, speed-sensitive Ackermann-like steering and four suspension samples.
 */
object VehiclePhysics {
    fun step(
        vehicle: VehicleControllerComponent,
        state: VehicleRuntimeState,
        input: VehicleControlInput,
        transform: TransformComponent,
        deltaSeconds: Float,
        groundHeight: (Float, Float) -> Float,
    ): VehicleStepResult {
        val dt = deltaSeconds.coerceIn(0.001f, 0.05f)
        val throttle = input.throttle.coerceIn(-1f, 1f)
        val brake = input.brake.coerceIn(0f, 1f)
        val targetSteering = input.steering.coerceIn(-1f, 1f)
        val steeringBlend = (vehicle.steeringResponse * dt).coerceIn(0f, 1f)
        val steering = state.steering + (targetSteering - state.steering) * steeringBlend
        var speed = state.longitudinalSpeedMetersPerSecond

        val forwardThrottle = max(throttle, 0f)
        val reverseThrottle = max(-throttle, 0f)
        val ratios = vehicle.gearboxRatios.ifEmpty { listOf(1f) }
        var gear = state.gear.coerceIn(1, ratios.size)
        var ratio = ratios[gear - 1] * vehicle.finalDriveRatio
        val wheelRpm = abs(speed) / (2f * Math.PI.toFloat() * vehicle.wheelRadiusMeters) * 60f
        var rpm = max(vehicle.idleRpm, wheelRpm * ratio)
        if (vehicle.automaticTransmission && speed >= 0f) {
            if (rpm > vehicle.redlineRpm * 0.91f && gear < ratios.size) gear++
            if (rpm < vehicle.redlineRpm * 0.34f && gear > 1) gear--
            ratio = ratios[gear - 1] * vehicle.finalDriveRatio
            rpm = max(vehicle.idleRpm, wheelRpm * ratio).coerceAtMost(vehicle.redlineRpm)
        }
        val normalizedRpm = ((rpm - vehicle.idleRpm) / (vehicle.redlineRpm - vehicle.idleRpm))
            .coerceIn(0f, 1f)
        // Broad naturally aspirated curve: usable low end, peak around 72% redline.
        val torqueFactor = (0.62f + 0.52f * (1f - abs(normalizedRpm - 0.72f) / 0.72f))
            .coerceIn(0.48f, 1f)
        val driveRatio = if (reverseThrottle > 0f && abs(speed) < 1.5f) {
            vehicle.reverseGearRatio * vehicle.finalDriveRatio
        } else ratio
        val requestedTorque = vehicle.maxTorqueNm * torqueFactor *
            (forwardThrottle - reverseThrottle) * driveRatio * vehicle.drivetrainEfficiency
        val driveForce = requestedTorque / vehicle.wheelRadiusMeters

        val airDensity = 1.225f
        val aeroDrag = 0.5f * airDensity * vehicle.dragCoefficient *
            vehicle.frontalAreaSquareMeters * speed * abs(speed)
        val rolling = vehicle.massKg * 9.81f * vehicle.rollingResistance * signOrZero(speed)
        val maxTireForce = vehicle.massKg * 9.81f * vehicle.tireGrip *
            (1f + vehicle.downforceCoefficient * speed * speed / max(vehicle.massKg * 9.81f, 1f))
        val tractionLimitedDrive = driveForce.coerceIn(
            -maxTireForce * (0.65f + vehicle.tractionControl * 0.35f),
            maxTireForce * (0.65f + vehicle.tractionControl * 0.35f),
        )
        val serviceBrake = brake * vehicle.brakeForce
        val direction = signOrZero(speed).let { if (it == 0f) signOrZero(throttle) else it }
        val handbrakeForce = input.handbrake.coerceIn(0f, 1f) * vehicle.handbrakeForce
        val brakingForce = (serviceBrake + handbrakeForce) * direction
        val acceleration = (tractionLimitedDrive - aeroDrag - rolling - brakingForce) /
            vehicle.massKg.coerceAtLeast(100f)
        val previousSpeed = speed
        speed += acceleration * dt
        if (previousSpeed != 0f && signOrZero(previousSpeed) != signOrZero(speed) && brake > 0f) speed = 0f
        val maxForward = vehicle.topSpeedKph / 3.6f
        speed = speed.coerceIn(-maxForward * 0.32f, maxForward)

        val speedSteeringReduction = (1f / (1f + abs(speed) * 0.035f)).coerceAtLeast(0.34f)
        val steeringRadians = Math.toRadians(
            (steering * vehicle.maxSteeringDegrees * speedSteeringReduction).toDouble(),
        ).toFloat()
        val idealYawRate = if (vehicle.wheelBaseMeters > 0.1f) {
            speed / vehicle.wheelBaseMeters * tan(steeringRadians)
        } else 0f
        val gripYawLimit = 9.81f * vehicle.lateralGrip / max(abs(speed), 1f)
        val yawRate = idealYawRate.coerceIn(-gripYawLimit, gripYawLimit) *
            (0.72f + vehicle.stabilityAssist * 0.28f)
        val nextYaw = transform.rotationEulerDegrees.y +
            Math.toDegrees((yawRate * dt).toDouble()).toFloat()
        val yawRadians = Math.toRadians(nextYaw.toDouble()).toFloat()
        val nextX = transform.position.x + sin(yawRadians) * speed * dt
        val nextZ = transform.position.z + cos(yawRadians) * speed * dt

        val wheelHeights = vehicle.wheels.map { wheel ->
            val wx = nextX + cos(yawRadians) * wheel.localPosition.x + sin(yawRadians) * wheel.localPosition.z
            val wz = nextZ - sin(yawRadians) * wheel.localPosition.x + cos(yawRadians) * wheel.localPosition.z
            groundHeight(wx, wz)
        }
        val front = wheelHeights.zip(vehicle.wheels)
            .filter { it.second.localPosition.z >= 0f }
            .map { it.first }.averageOr(transform.position.y.toDouble()).toFloat()
        val rear = wheelHeights.zip(vehicle.wheels)
            .filter { it.second.localPosition.z < 0f }
            .map { it.first }.averageOr(transform.position.y.toDouble()).toFloat()
        val left = wheelHeights.zip(vehicle.wheels)
            .filter { it.second.localPosition.x < 0f }
            .map { it.first }.averageOr(transform.position.y.toDouble()).toFloat()
        val right = wheelHeights.zip(vehicle.wheels)
            .filter { it.second.localPosition.x >= 0f }
            .map { it.first }.averageOr(transform.position.y.toDouble()).toFloat()
        val pitch = Math.toDegrees(atan2((rear - front).toDouble(), vehicle.wheelBaseMeters.toDouble())).toFloat()
        val roll = Math.toDegrees(atan2((left - right).toDouble(), vehicle.trackWidthMeters.toDouble())).toFloat()
        val ground = wheelHeights.averageOr(groundHeight(nextX, nextZ).toDouble()).toFloat()
        val rideHeight = vehicle.wheelRadiusMeters + vehicle.suspensionTravelMeters * 0.52f
        val nextY = ground + rideHeight
        val compression = wheelHeights.map { height ->
            ((height + rideHeight - nextY) / vehicle.suspensionTravelMeters + 0.5f).coerceIn(0f, 1f)
        }

        return VehicleStepResult(
            state = VehicleRuntimeState(
                longitudinalSpeedMetersPerSecond = speed,
                lateralSpeedMetersPerSecond = state.lateralSpeedMetersPerSecond *
                    (1f - vehicle.lateralGrip * dt).coerceIn(0f, 1f),
                steering = steering,
                engineRpm = rpm,
                gear = gear,
                suspensionCompression = compression,
            ),
            position = Vector3(nextX, nextY, nextZ),
            rotationEulerDegrees = Vector3(pitch, nextYaw, roll),
        )
    }

    private fun signOrZero(value: Float): Float = when {
        value > 0.0001f -> 1f
        value < -0.0001f -> -1f
        else -> 0f
    }

    private fun List<Float>.averageOr(fallback: Double): Double =
        if (isEmpty()) fallback else sum().toDouble() / size
}
