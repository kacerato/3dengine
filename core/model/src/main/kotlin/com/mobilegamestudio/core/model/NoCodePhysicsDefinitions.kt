package com.mobilegamestudio.core.model

/** Specialized contracts for physics queries that need structured outputs. */
object NoCodePhysicsDefinitions {
    private fun flow(id: String, label: String, required: Boolean = false) =
        VisualPortDefinition(id, label, VisualPortType.FLOW, required)

    private fun value(
        id: String,
        label: String,
        type: VisualPortType,
        required: Boolean = false,
    ) = VisualPortDefinition(id, label, type, required)

    private val traceInputs = listOf(
        flow("flowIn", "Then", required = true),
        value("origin", "Origin", VisualPortType.VECTOR3, required = true),
        value("direction", "Direction", VisualPortType.VECTOR3, required = true),
        value("maxDistance", "Max Distance", VisualPortType.NUMBER),
        value("layerMask", "Layer Mask", VisualPortType.NUMBER),
        value("ignoreObject", "Ignore Object", VisualPortType.OBJECT),
        value("ignoreObjects", "Ignore Objects", VisualPortType.LIST),
        value("includeTriggers", "Include Triggers", VisualPortType.BOOLEAN),
    )

    private val firstHitOutputs = listOf(
        flow("hit", "Hit"),
        flow("miss", "Miss"),
        value("didHit", "Did Hit", VisualPortType.BOOLEAN),
        value("object", "Object", VisualPortType.OBJECT),
        value("collider", "Collider", VisualPortType.COMPONENT),
        value("point", "Point", VisualPortType.VECTOR3),
        value("normal", "Normal", VisualPortType.VECTOR3),
        value("distance", "Distance", VisualPortType.NUMBER),
        value("hitData", "Hit Data", VisualPortType.ANY),
    )

    val definitions: List<VisualNodeDefinition> = listOf(
        VisualNodeDefinition(
            id = "physics.raycast",
            title = "Trace Ray",
            category = VisualNodeCategory.PHYSICS,
            operation = "physics.trace_ray",
            inputs = traceInputs,
            outputs = firstHitOutputs,
            keywords = setOf("trace ray", "raycast", "line trace", "hit", "collision"),
        ),
        VisualNodeDefinition(
            id = "physics.trace_ray",
            title = "Trace Ray",
            category = VisualNodeCategory.PHYSICS,
            operation = "physics.trace_ray",
            inputs = traceInputs,
            outputs = firstHitOutputs,
            keywords = setOf("trace ray", "raycast", "line trace", "hit", "collision"),
        ),
        VisualNodeDefinition(
            id = "physics.trace_ray_all",
            title = "Trace Ray All",
            category = VisualNodeCategory.PHYSICS,
            operation = "physics.trace_ray_all",
            inputs = traceInputs + value("maxHits", "Max Hits", VisualPortType.NUMBER),
            outputs = listOf(
                flow("hit", "Hit"),
                flow("miss", "Miss"),
                value("didHit", "Did Hit", VisualPortType.BOOLEAN),
                value("hits", "Hits", VisualPortType.LIST),
                value("count", "Count", VisualPortType.NUMBER),
                value("object", "First Object", VisualPortType.OBJECT),
                value("point", "First Point", VisualPortType.VECTOR3),
                value("distance", "First Distance", VisualPortType.NUMBER),
            ),
            keywords = setOf("trace all", "raycast all", "multi hit", "collision"),
        ),
    )

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    init {
        check(byId.size == definitions.size) { "IDs duplicados nas definições Physics NoCode." }
    }
}
