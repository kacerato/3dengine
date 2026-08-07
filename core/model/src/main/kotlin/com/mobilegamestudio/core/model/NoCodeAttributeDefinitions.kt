package com.mobilegamestudio.core.model

/**
 * Canonical contracts for shared Attributes.
 *
 * Runtime scope is explicit and is resolved from immutable ExecutionContext;
 * nodes never read editor selection or a global "last object" value.
 */
object NoCodeAttributeDefinitions {
    private fun flow(id: String, label: String, required: Boolean = false) =
        VisualPortDefinition(id, label, VisualPortType.FLOW, required)

    private fun value(
        id: String,
        label: String,
        type: VisualPortType,
        required: Boolean = false,
    ) = VisualPortDefinition(id, label, type, required)

    private data class Variant(
        val suffix: String,
        val titleSuffix: String,
        val type: VisualPortType,
    )

    private val variants = listOf(
        Variant("", "", VisualPortType.ANY),
        Variant("_bool", " Bool", VisualPortType.BOOLEAN),
        Variant("_number", " Number", VisualPortType.NUMBER),
        Variant("_text", " Text", VisualPortType.TEXT),
        Variant("_vector3", " Vector3", VisualPortType.VECTOR3),
        Variant("_object", " Object", VisualPortType.OBJECT),
        Variant("_component", " Component", VisualPortType.COMPONENT),
        Variant("_list", " List", VisualPortType.LIST),
    )

    private val addressInputs = listOf(
        value("name", "Name", VisualPortType.TEXT, required = true),
        value("scope", "Scope", VisualPortType.TEXT),
        value("object", "Object", VisualPortType.OBJECT),
        value("scene", "Scene", VisualPortType.TEXT),
    )

    val definitions: List<VisualNodeDefinition> = buildList {
        variants.forEach { variant ->
            add(
                VisualNodeDefinition(
                    id = "attribute.get${variant.suffix}",
                    title = "Get Attribute${variant.titleSuffix}",
                    category = VisualNodeCategory.OBJECT,
                    operation = "attribute.get${variant.suffix}",
                    inputs = addressInputs,
                    outputs = listOf(
                        value("value", "Value", variant.type),
                        value("exists", "Exists", VisualPortType.BOOLEAN),
                    ),
                    keywords = setOf("attribute", "variable", "state", "get", "blackboard"),
                ),
            )

            add(
                VisualNodeDefinition(
                    id = "attribute.set${variant.suffix}",
                    title = "Set Attribute${variant.titleSuffix}",
                    category = VisualNodeCategory.OBJECT,
                    operation = "attribute.set${variant.suffix}",
                    inputs = listOf(flow("flowIn", "Then", required = true)) +
                        addressInputs +
                        value("value", "Value", variant.type, required = true),
                    outputs = listOf(
                        flow("flow", "Then"),
                        value("previous", "Previous", variant.type),
                        value("changed", "Changed", VisualPortType.BOOLEAN),
                    ),
                    keywords = setOf("attribute", "variable", "state", "set", "blackboard"),
                ),
            )

            add(
                VisualNodeDefinition(
                    id = "attribute.changed${variant.suffix}",
                    title = "On Attribute Changed${variant.titleSuffix}",
                    category = VisualNodeCategory.EVENTS,
                    operation = "attribute.changed${variant.suffix}",
                    inputs = emptyList(),
                    outputs = listOf(
                        flow("flow", "Then"),
                        value("value", "Value", variant.type),
                        value("sender", "Sender", VisualPortType.OBJECT),
                    ),
                    keywords = setOf("attribute", "changed", "event", "state", "listener"),
                ),
            )
        }

        add(
            VisualNodeDefinition(
                id = "attribute.exists",
                title = "Has Attribute",
                category = VisualNodeCategory.OBJECT,
                operation = "attribute.exists",
                inputs = addressInputs,
                outputs = listOf(value("exists", "Exists", VisualPortType.BOOLEAN)),
                keywords = setOf("attribute", "exists", "has", "state"),
            ),
        )

        add(
            VisualNodeDefinition(
                id = "attribute.remove",
                title = "Remove Attribute",
                category = VisualNodeCategory.OBJECT,
                operation = "attribute.remove",
                inputs = listOf(flow("flowIn", "Then", required = true)) + addressInputs,
                outputs = listOf(
                    flow("flow", "Then"),
                    value("removed", "Removed", VisualPortType.BOOLEAN),
                    value("previous", "Previous", VisualPortType.ANY),
                ),
                keywords = setOf("attribute", "remove", "clear", "state"),
            ),
        )
    }

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    init {
        check(byId.size == definitions.size) { "IDs duplicados nas definições de Attributes NoCode." }
        definitions.forEach { definition ->
            require(definition.id.startsWith("attribute."))
            if (definition.id.startsWith("attribute.changed")) {
                require(definition.category == VisualNodeCategory.EVENTS)
                require(definition.outputs.any { it.type == VisualPortType.FLOW })
            }
        }
    }

    fun definition(id: String): VisualNodeDefinition? = byId[id]
}
