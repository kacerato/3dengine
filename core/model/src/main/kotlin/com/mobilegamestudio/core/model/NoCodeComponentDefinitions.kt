package com.mobilegamestudio.core.model

/**
 * Canonical visual-scripting contracts for object/component access.
 *
 * Component references always carry their owning ObjectRef. This prevents a
 * graph from resolving one interaction target and accidentally invoking a
 * component that belongs to another nearby object.
 */
object NoCodeComponentDefinitions {
    private fun flow(id: String, label: String, required: Boolean = false) =
        VisualPortDefinition(id, label, VisualPortType.FLOW, required)

    private fun value(
        id: String,
        label: String,
        type: VisualPortType,
        required: Boolean = false,
    ) = VisualPortDefinition(id, label, type, required)

    val definitions: List<VisualNodeDefinition> = listOf(
        VisualNodeDefinition(
            id = "object.pick_component",
            title = "Pick Component",
            category = VisualNodeCategory.OBJECT,
            operation = "component.pick",
            inputs = listOf(
                value("object", "Object", VisualPortType.OBJECT),
                value("componentType", "Component Type", VisualPortType.TEXT),
                value("componentId", "Component ID", VisualPortType.TEXT),
                value("includeDisabled", "Include Disabled", VisualPortType.BOOLEAN),
            ),
            outputs = listOf(
                value("component", "Component", VisualPortType.COMPONENT),
                value("found", "Found", VisualPortType.BOOLEAN),
            ),
            keywords = setOf("pick component", "get component", "componente", "target component"),
        ),
        // Keeps the public/legacy catalog id but gives it the same typed semantics.
        VisualNodeDefinition(
            id = "object.get_component",
            title = "Get Component",
            category = VisualNodeCategory.OBJECT,
            operation = "component.pick",
            inputs = listOf(
                value("object", "Object", VisualPortType.OBJECT),
                value("componentType", "Component Type", VisualPortType.TEXT),
                value("componentId", "Component ID", VisualPortType.TEXT),
                value("includeDisabled", "Include Disabled", VisualPortType.BOOLEAN),
            ),
            outputs = listOf(value("component", "Component", VisualPortType.COMPONENT)),
            keywords = setOf("component", "get", "pick"),
        ),
        VisualNodeDefinition(
            id = "object.has_component",
            title = "Has Component",
            category = VisualNodeCategory.OBJECT,
            operation = "component.has",
            inputs = listOf(
                value("object", "Object", VisualPortType.OBJECT),
                value("componentType", "Component Type", VisualPortType.TEXT),
                value("componentId", "Component ID", VisualPortType.TEXT),
                value("includeDisabled", "Include Disabled", VisualPortType.BOOLEAN),
            ),
            outputs = listOf(value("result", "Has Component", VisualPortType.BOOLEAN)),
            keywords = setOf("component", "has", "exists"),
        ),
        VisualNodeDefinition(
            id = "component.owner",
            title = "Component Owner",
            category = VisualNodeCategory.OBJECT,
            operation = "component.owner",
            inputs = listOf(value("component", "Component", VisualPortType.COMPONENT, required = true)),
            outputs = listOf(value("object", "Object", VisualPortType.OBJECT)),
            keywords = setOf("component owner", "object", "dono"),
        ),
        VisualNodeDefinition(
            id = "component.is_valid",
            title = "Is Component Valid",
            category = VisualNodeCategory.OBJECT,
            operation = "component.is_valid",
            inputs = listOf(value("component", "Component", VisualPortType.COMPONENT, required = true)),
            outputs = listOf(value("result", "Valid", VisualPortType.BOOLEAN)),
            keywords = setOf("component", "valid", "exists"),
        ),
        VisualNodeDefinition(
            id = "component.method",
            title = "Component Method",
            category = VisualNodeCategory.OBJECT,
            operation = "component.method",
            inputs = listOf(
                flow("flowIn", "Then", required = true),
                value("component", "Component", VisualPortType.COMPONENT, required = true),
                value("method", "Method", VisualPortType.TEXT, required = true),
                value("arguments", "Arguments", VisualPortType.LIST),
            ),
            outputs = listOf(
                flow("flow", "Then"),
                value("result", "Result", VisualPortType.ANY),
            ),
            keywords = setOf("component method", "invoke", "call", "metodo componente"),
        ),
    )

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    init {
        check(byId.size == definitions.size) { "Duplicate NoCode component definition ids." }
        definitions.forEach { definition ->
            require(definition.id.startsWith("object.") || definition.id.startsWith("component."))
        }
    }
}
