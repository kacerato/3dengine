package com.mobilegamestudio.core.model

/**
 * Explicit contracts for control-flow nodes.
 *
 * Flow nodes are intentionally kept out of the generic action-family builder:
 * their ports are part of runtime semantics, not decorative UI metadata.
 */
object NoCodeFlowDefinitions {
    private fun flow(id: String, label: String, required: Boolean = false) =
        VisualPortDefinition(id, label, VisualPortType.FLOW, required)

    private fun value(
        id: String,
        label: String,
        type: VisualPortType,
        required: Boolean = false,
    ) = VisualPortDefinition(id, label, type, required)

    val definitions: List<VisualNodeDefinition> = buildList {
        listOf(2, 3, 4, 5, 6, 8, 10, 12).forEach { count ->
            add(
                VisualNodeDefinition(
                    id = "flow.sequence.$count",
                    title = "Sequência $count",
                    category = VisualNodeCategory.FLOW,
                    operation = "flow.sequence.$count",
                    inputs = listOf(flow("flowIn", "Então", required = true)),
                    outputs = (1..count).map { index -> flow("then$index", "Então $index") },
                    keywords = setOf("sequence", "ordem", "ordered", "then"),
                ),
            )
        }

        add(
            VisualNodeDefinition(
                id = "flow.branch",
                title = "Condição",
                category = VisualNodeCategory.FLOW,
                operation = "flow.branch",
                inputs = listOf(
                    flow("flowIn", "Então", required = true),
                    value("condition", "Condição", VisualPortType.BOOLEAN, required = true),
                ),
                outputs = listOf(
                    flow("true", "Verdadeiro"),
                    flow("false", "Falso"),
                ),
                keywords = setOf("branch", "if", "condition", "verdadeiro", "falso"),
            ),
        )

        add(
            VisualNodeDefinition(
                id = "flow.gate",
                title = "Portão",
                category = VisualNodeCategory.FLOW,
                operation = "flow.gate",
                inputs = listOf(
                    flow("flowIn", "Entrar", required = true),
                    flow("open", "Abrir"),
                    flow("close", "Fechar"),
                    flow("toggle", "Alternar"),
                    value("startOpen", "Iniciar aberto", VisualPortType.BOOLEAN),
                ),
                outputs = listOf(flow("flow", "Sair")),
                keywords = setOf("gate", "portão", "open", "close", "toggle"),
            ),
        )

        add(
            VisualNodeDefinition(
                id = "flow.once",
                title = "Executar uma vez",
                category = VisualNodeCategory.FLOW,
                operation = "flow.once",
                inputs = listOf(
                    flow("flowIn", "Entrar", required = true),
                    flow("reset", "Resetar"),
                ),
                outputs = listOf(flow("flow", "Sair")),
                keywords = setOf("once", "do once", "uma vez", "reset"),
            ),
        )

        add(
            VisualNodeDefinition(
                id = "flow.do_n",
                title = "Executar N vezes",
                category = VisualNodeCategory.FLOW,
                operation = "flow.do_n",
                inputs = listOf(
                    flow("flowIn", "Entrar", required = true),
                    flow("reset", "Resetar"),
                    value("n", "Quantidade", VisualPortType.NUMBER, required = true),
                ),
                outputs = listOf(flow("flow", "Sair")),
                keywords = setOf("do n", "vezes", "count", "reset"),
            ),
        )

        listOf(2, 3, 4, 6, 8).forEach { count ->
            add(
                VisualNodeDefinition(
                    id = if (count == 4) "flow.parallel" else "flow.parallel.$count",
                    title = "Ações independentes $count",
                    category = VisualNodeCategory.FLOW,
                    operation = if (count == 4) "flow.parallel" else "flow.parallel.$count",
                    inputs = listOf(flow("flowIn", "Então", required = true)),
                    outputs = (1..count).map { index -> flow("branch$index", "Ação $index") },
                    keywords = setOf("parallel", "fan out", "independente", "ações"),
                ),
            )
        }

        listOf(2, 3, 4, 6, 8).forEach { count ->
            add(
                VisualNodeDefinition(
                    id = if (count == 4) "flow.multi_gate" else "flow.multi_gate.$count",
                    title = "Multi Gate $count",
                    category = VisualNodeCategory.FLOW,
                    operation = if (count == 4) "flow.multi_gate" else "flow.multi_gate.$count",
                    inputs = listOf(
                        flow("flowIn", "Entrar", required = true),
                        flow("reset", "Resetar"),
                        value("mode", "Modo", VisualPortType.TEXT),
                        value("loop", "Repetir", VisualPortType.BOOLEAN),
                        value("startIndex", "Índice inicial", VisualPortType.NUMBER),
                    ),
                    outputs = (0 until count).map { index -> flow("out$index", "Saída ${index + 1}") },
                    keywords = setOf("multi gate", "sequential", "random", "random no repeat"),
                ),
            )
        }

        // These nodes stay catalogued but are deliberately marked as pending in
        // the executor until their scheduler semantics are implemented.
        listOf(
            "while" to "Enquanto",
            "for" to "Para cada índice",
            "foreach" to "Para cada item",
            "delay" to "Aguardar",
            "debounce" to "Debounce",
            "throttle" to "Limitar frequência",
            "race" to "Primeiro a concluir",
            "cancel" to "Cancelar fluxo",
            "break" to "Interromper laço",
            "continue" to "Continuar laço",
            "switch_bool" to "Escolher booleano",
            "switch_number" to "Escolher número",
            "switch_text" to "Escolher texto",
            "switch_object" to "Escolher objeto",
            "flip_flop" to "Alternar A/B",
        ).forEach { (id, title) ->
            add(
                VisualNodeDefinition(
                    id = "flow.$id",
                    title = title,
                    category = VisualNodeCategory.FLOW,
                    operation = "flow.$id",
                    inputs = listOf(flow("flowIn", "Então", required = true)),
                    outputs = listOf(flow("flow", "Então")),
                ),
            )
        }
    }

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    init {
        check(byId.size == definitions.size) { "IDs duplicados nas definições de fluxo NoCode." }
        definitions.forEach(::validateDefinition)
    }

    fun definition(id: String): VisualNodeDefinition? = byId[id]

    private fun validateDefinition(definition: VisualNodeDefinition) {
        require(definition.category == VisualNodeCategory.FLOW)
        require(definition.id.startsWith("flow."))
        require(definition.inputs.any { it.type == VisualPortType.FLOW }) {
            "${definition.id} precisa de ao menos uma entrada de fluxo."
        }
        require(definition.outputs.any { it.type == VisualPortType.FLOW }) {
            "${definition.id} precisa de ao menos uma saída de fluxo."
        }
        val allPorts = definition.inputs.map { "in:${it.id}" } + definition.outputs.map { "out:${it.id}" }
        require(allPorts.distinct().size == allPorts.size) {
            "${definition.id} possui portas duplicadas no mesmo lado."
        }
    }
}
