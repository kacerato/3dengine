package com.mobilegamestudio.core.model

/** Selection type resolved from the real SceneDocument, never from a UI mode. */
enum class WorldSelectionKind {
    NONE,
    LAYER,
    TERRAIN,
    PRIMITIVE_MESH,
    EDITABLE_MESH,
    VOLUME,
    PLAYER,
    CAMERA,
    LIGHT,
    UI,
    OTHER,
}

enum class WorldCapability {
    CREATE_SOURCE,
    TRANSFORM,
    EDIT_VERTICES,
    EDIT_FACES,
    SCULPT_SURFACE,
    PAINT_MATERIAL,
    EDIT_VOLUME,
    CONVERT_TO_EDITABLE_MESH,
    CONVERT_TO_TERRAIN,
    CONVERT_TO_VOLUME,
    GENERATE_COLLIDER,
    ASSIGN_LAYER,
    CONFIGURE_GAMEPLAY,
    CONFIGURE_LIGHTING,
}

enum class WorldActionGroup {
    CREATE,
    SHAPE,
    CONVERT,
    ORGANIZE,
    GAMEPLAY,
    VALIDATE,
}

enum class WorldActionId {
    CREATE_TERRAIN,
    CREATE_EDITABLE_CUBE,
    CREATE_EMPTY_VOLUME,
    CREATE_PLAYABLE_WORLD,
    CONVERT_PRIMITIVE_TO_EDITABLE,
    CONVERT_EDITABLE_TO_TERRAIN,
    CONVERT_EDITABLE_TO_VOLUME,
    CONVERT_TERRAIN_TO_MESH,
    CONVERT_TERRAIN_TO_VOLUME,
    CONVERT_VOLUME_TO_MESH,
    GENERATE_COLLIDER,
    OPEN_SCULPT,
    OPEN_MESH_EDIT,
    OPEN_VOLUME_EDIT,
    OPEN_MATERIAL_PAINT,
    MOVE_TO_LAYER,
    VALIDATE_WORLD,
}

data class WorldActionDescriptor(
    val id: WorldActionId,
    val group: WorldActionGroup,
    val title: String,
    val effect: String,
    val enabled: Boolean,
    val disabledReason: String? = null,
    val selectionAfter: WorldSelectionKind? = null,
    val nextStep: String? = null,
    val destructive: Boolean = false,
)

data class WorldAuthoringContext(
    val selectedObjectId: String?,
    val selectionKind: WorldSelectionKind,
    val selectedName: String,
    val selectedLayer: WorldLayer?,
    val layerLocked: Boolean,
    val capabilities: Set<WorldCapability>,
    val actions: List<WorldActionDescriptor>,
    val suggestedActionId: WorldActionId?,
    val summary: String,
)

fun SceneDocument.resolveWorldAuthoringContext(selectedObjectId: String?): WorldAuthoringContext {
    val prepared = ensureWorldLayerStructure()
    val selected = prepared.objects.firstOrNull {
        it.id == selectedObjectId && WORLD_LAYER_SYSTEM_TAG !in it.tags
    }
    val kind = selected?.worldSelectionKind() ?: WorldSelectionKind.NONE
    val layer = prepared.worldLayerFor(selected?.id)
    val locked = layer?.locked == true
    val capabilities = capabilitiesFor(kind, locked)
    val actions = buildActions(kind, locked)
    val suggested = actions.firstOrNull { it.enabled && it.id == suggestedActionFor(kind) }
        ?: actions.firstOrNull(WorldActionDescriptor::enabled)
    return WorldAuthoringContext(
        selectedObjectId = selected?.id,
        selectionKind = kind,
        selectedName = selected?.name ?: "Nenhuma seleção",
        selectedLayer = layer,
        layerLocked = locked,
        capabilities = capabilities,
        actions = actions,
        suggestedActionId = suggested?.id,
        summary = contextSummary(kind, layer, locked),
    )
}

private fun GameObject.worldSelectionKind(): WorldSelectionKind = when {
    component<TerrainComponent>() != null -> WorldSelectionKind.TERRAIN
    component<VoxelVolumeComponent>() != null -> WorldSelectionKind.VOLUME
    component<EditableMeshComponent>() != null -> WorldSelectionKind.EDITABLE_MESH
    component<CharacterControllerComponent>() != null || component<VehicleControllerComponent>() != null -> WorldSelectionKind.PLAYER
    component<CameraComponent>() != null -> WorldSelectionKind.CAMERA
    component<DirectionalLightComponent>() != null -> WorldSelectionKind.LIGHT
    component<VirtualJoystickComponent>() != null || component<TouchButtonComponent>() != null -> WorldSelectionKind.UI
    component<MeshRendererComponent>()?.primitive != null -> WorldSelectionKind.PRIMITIVE_MESH
    component<MeshRendererComponent>() != null -> WorldSelectionKind.OTHER
    else -> WorldSelectionKind.OTHER
}

private fun capabilitiesFor(kind: WorldSelectionKind, locked: Boolean): Set<WorldCapability> = buildSet {
    add(WorldCapability.CREATE_SOURCE)
    if (kind != WorldSelectionKind.NONE) add(WorldCapability.ASSIGN_LAYER)
    if (!locked && kind !in setOf(WorldSelectionKind.NONE, WorldSelectionKind.UI)) add(WorldCapability.TRANSFORM)
    when (kind) {
        WorldSelectionKind.TERRAIN -> {
            add(WorldCapability.SCULPT_SURFACE)
            add(WorldCapability.PAINT_MATERIAL)
            add(WorldCapability.CONVERT_TO_EDITABLE_MESH)
            add(WorldCapability.CONVERT_TO_VOLUME)
            add(WorldCapability.GENERATE_COLLIDER)
        }
        WorldSelectionKind.PRIMITIVE_MESH -> {
            add(WorldCapability.CONVERT_TO_EDITABLE_MESH)
            add(WorldCapability.CONVERT_TO_TERRAIN)
            add(WorldCapability.CONVERT_TO_VOLUME)
            add(WorldCapability.GENERATE_COLLIDER)
        }
        WorldSelectionKind.EDITABLE_MESH -> {
            add(WorldCapability.EDIT_VERTICES)
            add(WorldCapability.EDIT_FACES)
            add(WorldCapability.CONVERT_TO_TERRAIN)
            add(WorldCapability.CONVERT_TO_VOLUME)
            add(WorldCapability.GENERATE_COLLIDER)
        }
        WorldSelectionKind.VOLUME -> {
            add(WorldCapability.EDIT_VOLUME)
            add(WorldCapability.CONVERT_TO_EDITABLE_MESH)
            add(WorldCapability.GENERATE_COLLIDER)
        }
        WorldSelectionKind.PLAYER -> add(WorldCapability.CONFIGURE_GAMEPLAY)
        WorldSelectionKind.LIGHT, WorldSelectionKind.CAMERA -> add(WorldCapability.CONFIGURE_LIGHTING)
        else -> Unit
    }
}.let { capabilities -> if (locked) capabilities - authoringCapabilities else capabilities }

private val authoringCapabilities = setOf(
    WorldCapability.TRANSFORM,
    WorldCapability.EDIT_VERTICES,
    WorldCapability.EDIT_FACES,
    WorldCapability.SCULPT_SURFACE,
    WorldCapability.PAINT_MATERIAL,
    WorldCapability.EDIT_VOLUME,
    WorldCapability.CONVERT_TO_EDITABLE_MESH,
    WorldCapability.CONVERT_TO_TERRAIN,
    WorldCapability.CONVERT_TO_VOLUME,
    WorldCapability.GENERATE_COLLIDER,
)

private fun buildActions(kind: WorldSelectionKind, locked: Boolean): List<WorldActionDescriptor> {
    fun action(
        id: WorldActionId,
        group: WorldActionGroup,
        title: String,
        effect: String,
        validFor: Set<WorldSelectionKind>? = null,
        nextStep: String? = null,
        unavailable: String? = null,
    ): WorldActionDescriptor {
        val selectionValid = validFor == null || kind in validFor
        val blockedByLock = locked && group in setOf(WorldActionGroup.SHAPE, WorldActionGroup.CONVERT)
        val enabled = selectionValid && !blockedByLock && unavailable == null
        val reason = when {
            blockedByLock -> "A camada da seleção está bloqueada. Desbloqueie-a na Estrutura."
            !selectionValid -> requiredSelectionMessage(validFor.orEmpty())
            unavailable != null -> unavailable
            else -> null
        }
        return WorldActionDescriptor(
            id = id,
            group = group,
            title = title,
            effect = effect,
            enabled = enabled,
            disabledReason = reason,
            nextStep = nextStep,
        )
    }

    return listOf(
        action(
            WorldActionId.CREATE_TERRAIN,
            WorldActionGroup.CREATE,
            "Criar superfície",
            "Cria um terrain heightfield e o coloca na camada Superfície.",
            nextStep = "Selecionar Moldar e criar o relevo.",
        ),
        action(
            WorldActionId.CREATE_EDITABLE_CUBE,
            WorldActionGroup.CREATE,
            "Criar forma editável",
            "Cria um cubo com vértices e faces, pronto para modelagem.",
            nextStep = "Selecionar uma face, extrudar ou subdividir.",
        ),
        action(
            WorldActionId.CREATE_EMPTY_VOLUME,
            WorldActionGroup.CREATE,
            "Criar volume",
            "Cria um campo voxel para cavernas, túneis e overhangs.",
            nextStep = "Usar Adicionar, Subtrair ou Suavizar.",
        ),
        action(
            WorldActionId.CREATE_PLAYABLE_WORLD,
            WorldActionGroup.GAMEPLAY,
            "Aplicar preset jogável",
            "Adiciona somente o que estiver faltando: terreno, luz, player, câmera e input.",
            nextStep = "Dar Play e validar movimento, visão e pulo.",
        ),
        action(
            WorldActionId.CONVERT_PRIMITIVE_TO_EDITABLE,
            WorldActionGroup.CONVERT,
            "Tornar malha editável",
            "Preserva o objeto e troca a fonte primitiva por topologia editável.",
            validFor = setOf(WorldSelectionKind.PRIMITIVE_MESH),
            nextStep = "Editar vértices, faces e modificadores.",
        ),
        action(
            WorldActionId.OPEN_SCULPT,
            WorldActionGroup.SHAPE,
            "Moldar relevo",
            "Ativa o pincel na superfície selecionada sem prender a câmera.",
            validFor = setOf(WorldSelectionKind.TERRAIN),
        ),
        action(
            WorldActionId.OPEN_MATERIAL_PAINT,
            WorldActionGroup.SHAPE,
            "Pintar materiais",
            "Edita pesos das camadas de material da superfície.",
            validFor = setOf(WorldSelectionKind.TERRAIN),
        ),
        action(
            WorldActionId.OPEN_MESH_EDIT,
            WorldActionGroup.SHAPE,
            "Editar topologia",
            "Abre seleção de vértices e faces, extrusão e subdivisão.",
            validFor = setOf(WorldSelectionKind.EDITABLE_MESH),
        ),
        action(
            WorldActionId.OPEN_VOLUME_EDIT,
            WorldActionGroup.SHAPE,
            "Esculpir volume",
            "Abre edição voxel por fatias para adicionar ou remover matéria.",
            validFor = setOf(WorldSelectionKind.VOLUME),
        ),
        action(
            WorldActionId.CONVERT_EDITABLE_TO_VOLUME,
            WorldActionGroup.CONVERT,
            "Malha → volume",
            "Cria um resultado voxel e mantém a malha original disponível.",
            validFor = setOf(WorldSelectionKind.EDITABLE_MESH),
            nextStep = "Esculpir cavernas ou gerar colisão volumétrica.",
        ),
        action(
            WorldActionId.CONVERT_EDITABLE_TO_TERRAIN,
            WorldActionGroup.CONVERT,
            "Malha → terreno",
            "Projeta a superfície da malha em um terrain editável.",
            validFor = setOf(WorldSelectionKind.EDITABLE_MESH, WorldSelectionKind.PRIMITIVE_MESH),
            unavailable = "O conversor de projeção de superfície pertence à Fase 5. A origem permanecerá intacta quando ele for ativado.",
        ),
        action(
            WorldActionId.CONVERT_TERRAIN_TO_MESH,
            WorldActionGroup.CONVERT,
            "Terreno → malha",
            "Gera uma malha derivada para exportação ou edição topológica.",
            validFor = setOf(WorldSelectionKind.TERRAIN),
            unavailable = "A geração de malha derivada pertence à Fase 5.",
        ),
        action(
            WorldActionId.CONVERT_TERRAIN_TO_VOLUME,
            WorldActionGroup.CONVERT,
            "Terreno → volume",
            "Cria espessura volumétrica para cavernas e overhangs.",
            validFor = setOf(WorldSelectionKind.TERRAIN),
            unavailable = "A conversão volumétrica de terrain pertence à Fase 7.",
        ),
        action(
            WorldActionId.CONVERT_VOLUME_TO_MESH,
            WorldActionGroup.CONVERT,
            "Volume → malha",
            "Extrai a superfície do campo voxel como resultado derivado.",
            validFor = setOf(WorldSelectionKind.VOLUME),
            unavailable = "A extração Surface Nets/Transvoxel pertence à Fase 7.",
        ),
        action(
            WorldActionId.GENERATE_COLLIDER,
            WorldActionGroup.CONVERT,
            "Gerar colisão",
            "Cria ou atualiza o collider a partir da geometria selecionada.",
            validFor = setOf(
                WorldSelectionKind.PRIMITIVE_MESH,
                WorldSelectionKind.EDITABLE_MESH,
                WorldSelectionKind.TERRAIN,
                WorldSelectionKind.VOLUME,
            ),
            unavailable = "A geração derivada de collider pertence à Fase 6.",
        ),
        action(
            WorldActionId.MOVE_TO_LAYER,
            WorldActionGroup.ORGANIZE,
            "Mover para camada",
            "Altera a participação do objeto sem mudar seu parentesco na cena.",
            validFor = WorldSelectionKind.entries.filterNot { it == WorldSelectionKind.NONE }.toSet(),
        ),
        action(
            WorldActionId.VALIDATE_WORLD,
            WorldActionGroup.VALIDATE,
            "Validar mundo",
            "Verifica camadas, câmera, luz, colisão, player e dependências.",
            nextStep = "Resolver os diagnósticos antes do Play.",
        ),
    )
}

private fun suggestedActionFor(kind: WorldSelectionKind): WorldActionId = when (kind) {
    WorldSelectionKind.NONE -> WorldActionId.CREATE_TERRAIN
    WorldSelectionKind.TERRAIN -> WorldActionId.OPEN_SCULPT
    WorldSelectionKind.PRIMITIVE_MESH -> WorldActionId.CONVERT_PRIMITIVE_TO_EDITABLE
    WorldSelectionKind.EDITABLE_MESH -> WorldActionId.OPEN_MESH_EDIT
    WorldSelectionKind.VOLUME -> WorldActionId.OPEN_VOLUME_EDIT
    WorldSelectionKind.PLAYER -> WorldActionId.VALIDATE_WORLD
    else -> WorldActionId.MOVE_TO_LAYER
}

private fun requiredSelectionMessage(kinds: Set<WorldSelectionKind>): String {
    if (kinds.isEmpty()) return "Ação indisponível no contexto atual."
    return "Selecione: " + kinds.joinToString { kind -> kind.displayName() } + "."
}

private fun contextSummary(kind: WorldSelectionKind, layer: WorldLayer?, locked: Boolean): String {
    val layerText = layer?.name?.let { " · camada $it" }.orEmpty()
    val lockText = if (locked) " · bloqueada" else ""
    return "${kind.displayName()}$layerText$lockText"
}

fun WorldSelectionKind.displayName(): String = when (this) {
    WorldSelectionKind.NONE -> "Nenhuma seleção"
    WorldSelectionKind.LAYER -> "Camada"
    WorldSelectionKind.TERRAIN -> "Terreno"
    WorldSelectionKind.PRIMITIVE_MESH -> "Malha primitiva"
    WorldSelectionKind.EDITABLE_MESH -> "Malha editável"
    WorldSelectionKind.VOLUME -> "Volume voxel"
    WorldSelectionKind.PLAYER -> "Gameplay"
    WorldSelectionKind.CAMERA -> "Câmera"
    WorldSelectionKind.LIGHT -> "Iluminação"
    WorldSelectionKind.UI -> "Interface"
    WorldSelectionKind.OTHER -> "Objeto"
}
