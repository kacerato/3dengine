package com.mobilegamestudio.core.model

/**
 * Spatial NoCode contracts shared by interaction and gameplay graphs.
 * Distance is a value query; proximity is an event source with hysteresis.
 */
object NoCodeSpatialDefinitions {
    private fun flow(id: String, label: String) = VisualPortDefinition(id, label, VisualPortType.FLOW)
    private fun value(
        id: String,
        label: String,
        type: VisualPortType,
        required: Boolean = false,
    ) = VisualPortDefinition(id, label, type, required)

    val definitions = listOf(
        VisualNodeDefinition(
            id = "object.distance",
            title = "Object Distance",
            category = VisualNodeCategory.OBJECT,
            operation = "spatial.object_distance",
            inputs = listOf(
                value("a", "Object A", VisualPortType.OBJECT, required = true),
                value("b", "Object B", VisualPortType.OBJECT, required = true),
            ),
            outputs = listOf(value("distance", "Distance", VisualPortType.NUMBER)),
            keywords = setOf("object distance", "distance between", "distancia", "proximity"),
        ),
        VisualNodeDefinition(
            id = "event.objects_distance",
            title = "On Objects Distance",
            category = VisualNodeCategory.EVENTS,
            operation = "spatial.on_objects_distance",
            inputs = listOf(
                value("a", "Object A", VisualPortType.OBJECT, required = true),
                value("b", "Object B", VisualPortType.OBJECT, required = true),
                value("enterDistance", "Enter Distance", VisualPortType.NUMBER, required = true),
                value("exitPadding", "Exit Padding", VisualPortType.NUMBER),
                value("emitStay", "Emit Stay", VisualPortType.BOOLEAN),
            ),
            outputs = listOf(
                flow("enter", "Enter"),
                flow("stay", "Stay"),
                flow("exit", "Exit"),
                value("distance", "Distance", VisualPortType.NUMBER),
                value("objectA", "Object A", VisualPortType.OBJECT),
                value("objectB", "Object B", VisualPortType.OBJECT),
            ),
            keywords = setOf("on objects distance", "proximity", "enter range", "exit range", "distance event"),
        ),
    )

    val byId = definitions.associateBy(VisualNodeDefinition::id)

    init {
        check(byId.size == definitions.size) { "Duplicate spatial NoCode ids." }
    }
}
