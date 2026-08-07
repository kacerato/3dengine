package com.mobilegamestudio.core.model

/**
 * Canonical NoCode node registry used by validation, runtime and editor UI.
 *
 * `VisualNodeCatalog` remains the legacy/generated bulk catalog. Specialized
 * node families can override contracts here without duplicating IDs or forcing
 * runtime semantics into the bulk generator. This is the migration seam for
 * future EngineApiRegistry-generated nodes as well.
 */
object NoCodeNodeRegistry {
    private val specializedDefinitions: List<VisualNodeDefinition> =
        NoCodeFlowDefinitions.definitions +
            NoCodeEventDefinitions.definitions +
            NoCodeAttributeDefinitions.definitions +
            NoCodePhysicsDefinitions.definitions +
            NoCodeComponentDefinitions.definitions +
            NoCodeSpatialDefinitions.definitions

    private val specializedById: Map<String, VisualNodeDefinition> =
        specializedDefinitions.associateBy(VisualNodeDefinition::id).also { byId ->
            check(byId.size == specializedDefinitions.size) {
                "Definições NoCode especializadas não podem repetir IDs."
            }
        }

    val definitions: List<VisualNodeDefinition> = buildList {
        VisualNodeCatalog.definitions.forEach { definition ->
            add(specializedById[definition.id] ?: definition)
        }
        specializedDefinitions.forEach { definition ->
            if (VisualNodeCatalog.byId[definition.id] == null) add(definition)
        }
    }.also { definitions ->
        check(definitions.map(VisualNodeDefinition::id).distinct().size == definitions.size) {
            "O registry NoCode não pode conter IDs duplicados."
        }
    }

    val byId: Map<String, VisualNodeDefinition> = definitions.associateBy(VisualNodeDefinition::id)

    fun definition(id: String): VisualNodeDefinition? = byId[id]

    fun definitionFor(node: VisualNode): VisualNodeDefinition? {
        val explicit = node.definitionId
        if (explicit != null) return byId[explicit]
        val legacyId = VisualNodeCatalog.legacyDefinitionId(node.type)
        return byId[legacyId]
    }

    fun contains(id: String): Boolean = id in byId
}
