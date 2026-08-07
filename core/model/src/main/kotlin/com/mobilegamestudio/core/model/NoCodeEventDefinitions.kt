package com.mobilegamestudio.core.model

/**
 * Canonical contracts for Custom Event / Send Event nodes.
 *
 * All variants share the same runtime event model; the typed variants only
 * narrow the payload port. Scope is represented as text in the graph format for
 * backwards compatibility, while the editor can render it as a dropdown.
 */
object NoCodeEventDefinitions {
    private fun flow(id: String, label: String, required: Boolean = false) =
        VisualPortDefinition(id, label, VisualPortType.FLOW, required)

    private fun value(
        id: String,
        label: String,
        type: VisualPortType,
        required: Boolean = false,
    ) = VisualPortDefinition(id, label, type, required)

    private data class PayloadVariant(
        val suffix: String,
        val titleSuffix: String,
        val type: VisualPortType,
    )

    private val payloadVariants = listOf(
        PayloadVariant("", "", VisualPortType.ANY),
        PayloadVariant("_bool", " Bool", VisualPortType.BOOLEAN),
        PayloadVariant("_number", " Number", VisualPortType.NUMBER),
        PayloadVariant("_text", " Text", VisualPortType.TEXT),
    )

    val definitions: List<VisualNodeDefinition> = buildList {
        payloadVariants.forEach { variant ->
            add(
                VisualNodeDefinition(
                    id = "event.custom.received${variant.suffix}",
                    title = "Custom Event${variant.titleSuffix}",
                    category = VisualNodeCategory.EVENTS,
                    operation = "event.custom.received${variant.suffix}",
                    inputs = emptyList(),
                    outputs = listOf(
                        flow("flow", "Então"),
                        value("sender", "Sender", VisualPortType.OBJECT),
                        value("target", "Target", VisualPortType.OBJECT),
                        value("value", "Value", variant.type),
                    ),
                    keywords = setOf("custom event", "evento", "receiver", "listener", "payload"),
                ),
            )

            add(
                VisualNodeDefinition(
                    id = "event.send${variant.suffix}",
                    title = "Send Event${variant.titleSuffix}",
                    category = VisualNodeCategory.EVENTS,
                    operation = "event.send${variant.suffix}",
                    inputs = buildList {
                        add(flow("flowIn", "Então", required = true))
                        add(value("event", "Event", VisualPortType.TEXT, required = true))
                        add(value("scope", "Scope", VisualPortType.TEXT))
                        add(value("target", "Target", VisualPortType.OBJECT))
                        add(value("scene", "Scene", VisualPortType.TEXT))
                        add(value("graph", "Graph", VisualPortType.TEXT))
                        if (variant.type != VisualPortType.ANY || variant.suffix.isEmpty()) {
                            add(value("value", "Value", variant.type))
                        }
                    },
                    outputs = listOf(flow("flow", "Então")),
                    keywords = setOf("send event", "evento", "dispatch", "emit", "scope", "target"),
                ),
            )

            // Existing public IDs remain first-class targeted object aliases.
            add(
                VisualNodeDefinition(
                    id = "object.send_event${variant.suffix}",
                    title = "Send Event${variant.titleSuffix} To Object",
                    category = VisualNodeCategory.OBJECT,
                    operation = "object.send_event${variant.suffix}",
                    inputs = listOf(
                        flow("flowIn", "Então", required = true),
                        value("object", "Object", VisualPortType.OBJECT, required = true),
                        value("event", "Event", VisualPortType.TEXT, required = true),
                        value("value", "Value", variant.type),
                    ),
                    outputs = listOf(flow("flow", "Então")),
                    keywords = setOf("send event", "object event", "target", "evento objeto"),
                ),
            )
        }
    }

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    init {
        check(byId.size == definitions.size) { "IDs duplicados nas definições de eventos NoCode." }
        definitions.forEach { definition ->
            require(definition.id.startsWith("event.") || definition.id.startsWith("object.send_event"))
            require(definition.outputs.any { it.type == VisualPortType.FLOW }) {
                "${definition.id} precisa expor saída de fluxo."
            }
        }
    }

    fun definition(id: String): VisualNodeDefinition? = byId[id]
}
