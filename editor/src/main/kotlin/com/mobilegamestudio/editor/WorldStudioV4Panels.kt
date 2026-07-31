package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.WORLD_LAYER_SYSTEM_TAG
import com.mobilegamestudio.core.model.WorldActionDescriptor
import com.mobilegamestudio.core.model.WorldActionGroup
import com.mobilegamestudio.core.model.WorldActionId
import com.mobilegamestudio.core.model.WorldCapability
import com.mobilegamestudio.core.model.WorldLayer
import com.mobilegamestudio.core.model.WorldLayerKind
import com.mobilegamestudio.core.model.WorldSelectionKind
import com.mobilegamestudio.core.model.displayName
import com.mobilegamestudio.core.model.resolveWorldAuthoringContext
import com.mobilegamestudio.core.model.worldLayerFor
import com.mobilegamestudio.core.model.worldLayerMembership
import com.mobilegamestudio.core.model.worldLayerSet
import com.mobilegamestudio.core.model.worldLayers

private val V4Panel = Color(0xFF12151A)
private val V4Raised = Color(0xFF1B2027)
private val V4RaisedStrong = Color(0xFF222832)
private val V4Border = Color(0xFF303742)
private val V4Text = Color(0xFFF1F2F6)
private val V4Muted = Color(0xFF9AA2AE)
private val V4Accent = Color(0xFF9B72E4)
private val V4AccentSoft = Color(0xFF2D2242)
private val V4Positive = Color(0xFF69C99A)
private val V4Warning = Color(0xFFF0C36D)
private val V4Danger = Color(0xFFE17479)

internal enum class WorldStudioV4RequestedMode {
    OBJECTS,
    TERRAIN,
    PAINT,
    MESH,
    VOLUME,
}

@Composable
internal fun WorldStudioV4ContextStrip(
    state: WorkspaceUiState,
    onOpenAuthor: () -> Unit,
) {
    val document = state.sceneDocument ?: return
    val context = remember(document, state.selectedObjectId) {
        document.resolveWorldAuthoringContext(state.selectedObjectId)
    }
    val suggested = context.actions.firstOrNull { it.id == context.suggestedActionId }
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(42.dp)
            .background(V4Panel)
            .border(1.dp, V4Border)
            .padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text(
            context.selectionKind.displayName().uppercase(),
            color = V4Accent,
            fontSize = 7.sp,
            fontWeight = FontWeight.Bold,
            letterSpacing = 0.6.sp,
        )
        Text(
            context.selectedName,
            color = V4Text,
            fontSize = 8.sp,
            fontWeight = FontWeight.SemiBold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
        context.selectedLayer?.let { layer ->
            V4TinyChip(layer.name, layer.locked, layer.visible)
        }
        Spacer(Modifier.weight(1f))
        if (suggested != null) {
            Text(
                "Próximo: ${suggested.title}",
                color = if (suggested.enabled) V4Positive else V4Muted,
                fontSize = 7.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
        TextButton(
            onClick = onOpenAuthor,
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.textButtonColors(
                containerColor = V4AccentSoft,
                contentColor = V4Accent,
            ),
        ) { Text("AÇÕES", fontSize = 7.sp, fontWeight = FontWeight.Bold) }
    }
}

@Composable
internal fun WorldStudioV4StructurePanel(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
    onSelectLayer: (String) -> Unit,
    onCreateLayer: (String, WorldLayerKind) -> Unit,
    onRenameLayer: (String, String) -> Unit,
    onMoveLayer: (String, Int) -> Unit,
    onToggleLayerVisibility: (String) -> Unit,
    onToggleLayerLock: (String) -> Unit,
    onToggleLayerSolo: (String) -> Unit,
    onAssignSelectedToLayer: (String) -> Unit,
) {
    val document = state.sceneDocument
    if (document == null) {
        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Text("Carregando estrutura…", color = V4Muted, fontSize = 8.sp)
        }
        return
    }
    val layerSet = document.worldLayerSet()
    val layers = document.worldLayers()
    var tabName by rememberSaveable { mutableStateOf("LAYERS") }
    var adding by rememberSaveable { mutableStateOf(false) }
    var newLayerName by rememberSaveable { mutableStateOf("") }
    val selectedLayerId = layerSet?.selectedLayerId ?: layers.firstOrNull()?.id

    Column(Modifier.fillMaxSize()) {
        V4PanelHeading(
            title = "Estrutura do mundo",
            subtitle = "Camadas organizam autoria; objetos mantêm parentesco e transformação.",
        )
        Row(
            Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 5.dp),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
        ) {
            V4Segment("Camadas", tabName == "LAYERS", Modifier.weight(1f)) { tabName = "LAYERS" }
            V4Segment("Objetos", tabName == "OBJECTS", Modifier.weight(1f)) { tabName = "OBJECTS" }
        }
        if (tabName == "LAYERS") {
            Row(
                Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 3.dp),
                horizontalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                V4SmallAction(if (adding) "Cancelar" else "+ Camada", Modifier.weight(1f)) {
                    adding = !adding
                    newLayerName = ""
                }
                V4SmallAction("Atribuir seleção", Modifier.weight(1.35f), enabled = state.selectedObjectId != null && selectedLayerId != null) {
                    selectedLayerId?.let(onAssignSelectedToLayer)
                }
            }
            if (adding) {
                Column(
                    Modifier.fillMaxWidth().padding(8.dp)
                        .background(V4Raised, RoundedCornerShape(14.dp))
                        .border(1.dp, V4Border, RoundedCornerShape(14.dp))
                        .padding(8.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp),
                ) {
                    OutlinedTextField(
                        value = newLayerName,
                        onValueChange = { newLayerName = it.take(48) },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        label = { Text("Nome da camada", fontSize = 7.sp) },
                    )
                    Row(
                        Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                        horizontalArrangement = Arrangement.spacedBy(4.dp),
                    ) {
                        listOf(
                            WorldLayerKind.SURFACE to "Superfície",
                            WorldLayerKind.GEOMETRY to "Geometria",
                            WorldLayerKind.VOLUME to "Volume",
                            WorldLayerKind.GAMEPLAY to "Gameplay",
                            WorldLayerKind.CUSTOM to "Personalizada",
                        ).forEach { (kind, label) ->
                            V4SmallAction(label, enabled = newLayerName.isNotBlank()) {
                                onCreateLayer(newLayerName, kind)
                                adding = false
                                newLayerName = ""
                            }
                        }
                    }
                }
            }
            LazyColumn(
                Modifier.fillMaxSize().padding(horizontal = 8.dp, vertical = 4.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                items(layers, key = WorldLayer::id) { layer ->
                    WorldLayerRow(
                        layer = layer,
                        selected = layer.id == selectedLayerId,
                        objectCount = document.objects.count { objectValue ->
                            WORLD_LAYER_SYSTEM_TAG !in objectValue.tags &&
                                objectValue.worldLayerMembership()?.layerId == layer.id
                        },
                        onSelect = { onSelectLayer(layer.id) },
                        onRename = { onRenameLayer(layer.id, it) },
                        onMoveUp = { onMoveLayer(layer.id, -1) },
                        onMoveDown = { onMoveLayer(layer.id, 1) },
                        onVisibility = { onToggleLayerVisibility(layer.id) },
                        onLock = { onToggleLayerLock(layer.id) },
                        onSolo = { onToggleLayerSolo(layer.id) },
                    )
                }
            }
        } else {
            LazyColumn(
                Modifier.fillMaxSize().padding(8.dp),
                verticalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                layers.forEach { layer ->
                    item(key = "header-${layer.id}") {
                        Row(
                            Modifier.fillMaxWidth().padding(top = 4.dp, bottom = 2.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Box(
                                Modifier.size(8.dp).background(layer.color(), RoundedCornerShape(3.dp)),
                            )
                            Text(
                                layer.name.uppercase(),
                                color = if (layer.locked) V4Warning else V4Muted,
                                fontSize = 7.sp,
                                fontWeight = FontWeight.Bold,
                                modifier = Modifier.padding(start = 6.dp),
                            )
                        }
                    }
                    val objects = document.objects.filter { objectValue ->
                        WORLD_LAYER_SYSTEM_TAG !in objectValue.tags &&
                            objectValue.worldLayerMembership()?.layerId == layer.id
                    }
                    items(objects, key = { "${layer.id}-${it.id}" }) { objectValue ->
                        Row(
                            Modifier.fillMaxWidth().height(40.dp)
                                .background(
                                    if (objectValue.id == state.selectedObjectId) V4AccentSoft else V4Raised,
                                    RoundedCornerShape(12.dp),
                                )
                                .clickable(enabled = !layer.locked) { onSelectObject(objectValue.id) }
                                .padding(horizontal = 9.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Text(
                                if (layer.locked) "▣" else "◇",
                                color = if (layer.locked) V4Warning else layer.color(),
                                fontSize = 10.sp,
                            )
                            Text(
                                objectValue.name,
                                color = if (objectValue.enabled) V4Text else V4Muted,
                                fontSize = 8.sp,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                modifier = Modifier.weight(1f).padding(horizontal = 7.dp),
                            )
                            Text(
                                objectValue.worldLayerMembership()?.layerId?.substringAfterLast('-').orEmpty(),
                                color = V4Muted,
                                fontSize = 5.5.sp,
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
internal fun WorldStudioV4AuthorPanel(
    state: WorkspaceUiState,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onRequestedMode: (WorldStudioV4RequestedMode) -> Unit,
    onOpenStructure: () -> Unit,
    onDiagnostic: (String) -> Unit,
) {
    val document = state.sceneDocument
    if (document == null) return
    val context = remember(document, state.selectedObjectId) {
        document.resolveWorldAuthoringContext(state.selectedObjectId)
    }
    var selectedGroupName by rememberSaveable { mutableStateOf(WorldActionGroup.CREATE.name) }
    val availableGroups = WorldActionGroup.entries.filter { group -> context.actions.any { it.group == group } }
    val selectedGroup = WorldActionGroup.entries.firstOrNull {
        it.name == selectedGroupName && it in availableGroups
    } ?: availableGroups.firstOrNull() ?: WorldActionGroup.CREATE

    Column(Modifier.fillMaxSize()) {
        V4PanelHeading(
            title = context.selectedName,
            subtitle = context.summary,
        )
        if (context.layerLocked) {
            Text(
                "Camada bloqueada: ações de forma e conversão foram desativadas.",
                color = V4Warning,
                fontSize = 7.sp,
                modifier = Modifier.fillMaxWidth().background(Color(0xFF332A1B)).padding(8.dp),
            )
        }
        Row(
            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()).padding(7.dp),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
        ) {
            availableGroups.forEach { group ->
                V4Segment(group.label(), selectedGroup == group) { selectedGroupName = group.name }
            }
        }
        if (context.capabilities.isNotEmpty()) {
            Row(
                Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()).padding(horizontal = 8.dp, vertical = 2.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                context.capabilities.sortedBy(Enum<*>::name).forEach { capability ->
                    V4CapabilityChip(capability)
                }
            }
        }
        LazyColumn(
            Modifier.fillMaxSize().padding(8.dp),
            verticalArrangement = Arrangement.spacedBy(7.dp),
        ) {
            val actions = context.actions.filter { it.group == selectedGroup }
            items(actions, key = WorldActionDescriptor::id) { action ->
                WorldActionCard(
                    action = action,
                    suggested = action.id == context.suggestedActionId,
                    onClick = {
                        when (action.id) {
                            WorldActionId.CREATE_TERRAIN -> onCreateFlatTerrain(65, 96f, 20f)
                            WorldActionId.CREATE_EDITABLE_CUBE -> onCreateEditableMesh(PrimitiveMesh.CUBE)
                            WorldActionId.CREATE_EMPTY_VOLUME -> onCreateVoxelVolume(24, false)
                            WorldActionId.CREATE_PLAYABLE_WORLD -> onCreatePlayableWorld()
                            WorldActionId.CONVERT_PRIMITIVE_TO_EDITABLE -> onConvertSelectedToEditableMesh()
                            WorldActionId.CONVERT_EDITABLE_TO_VOLUME -> onConvertMeshToVoxel(24)
                            WorldActionId.OPEN_SCULPT -> onRequestedMode(WorldStudioV4RequestedMode.TERRAIN)
                            WorldActionId.OPEN_MATERIAL_PAINT -> onRequestedMode(WorldStudioV4RequestedMode.PAINT)
                            WorldActionId.OPEN_MESH_EDIT -> onRequestedMode(WorldStudioV4RequestedMode.MESH)
                            WorldActionId.OPEN_VOLUME_EDIT -> onRequestedMode(WorldStudioV4RequestedMode.VOLUME)
                            WorldActionId.MOVE_TO_LAYER -> onOpenStructure()
                            WorldActionId.VALIDATE_WORLD -> onDiagnostic(validateWorldSummary(state))
                            else -> Unit
                        }
                    },
                )
            }
        }
    }
}

@Composable
private fun WorldLayerRow(
    layer: WorldLayer,
    selected: Boolean,
    objectCount: Int,
    onSelect: () -> Unit,
    onRename: (String) -> Unit,
    onMoveUp: () -> Unit,
    onMoveDown: () -> Unit,
    onVisibility: () -> Unit,
    onLock: () -> Unit,
    onSolo: () -> Unit,
) {
    var renaming by remember(layer.id) { mutableStateOf(false) }
    var name by remember(layer.id, layer.name) { mutableStateOf(layer.name) }
    Column(
        Modifier.fillMaxWidth()
            .background(if (selected) V4AccentSoft else V4Raised, RoundedCornerShape(15.dp))
            .border(1.dp, if (selected) V4Accent else V4Border, RoundedCornerShape(15.dp))
            .clickable { onSelect() }
            .padding(8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Box(Modifier.size(10.dp).background(layer.color(), RoundedCornerShape(4.dp)))
            if (renaming) {
                OutlinedTextField(
                    value = name,
                    onValueChange = { name = it.take(48) },
                    modifier = Modifier.weight(1f).padding(horizontal = 6.dp),
                    singleLine = true,
                )
                V4SquareAction("✓") {
                    onRename(name)
                    renaming = false
                }
            } else {
                Column(Modifier.weight(1f).padding(horizontal = 7.dp)) {
                    Text(layer.name, color = V4Text, fontSize = 8.5.sp, fontWeight = FontWeight.Bold, maxLines = 1)
                    Text("${layer.kind.label()} · $objectCount objetos", color = V4Muted, fontSize = 6.sp)
                }
                V4SquareAction("✎") { renaming = true }
            }
        }
        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            V4SquareAction(if (layer.visible) "●" else "○", active = layer.visible, onClick = onVisibility)
            V4SquareAction(if (layer.locked) "▣" else "□", active = layer.locked, warning = layer.locked, onClick = onLock)
            V4SquareAction("S", active = layer.solo, onClick = onSolo)
            Spacer(Modifier.weight(1f))
            V4SquareAction("↑", onClick = onMoveUp)
            V4SquareAction("↓", onClick = onMoveDown)
        }
    }
}

@Composable
private fun WorldActionCard(
    action: WorldActionDescriptor,
    suggested: Boolean,
    onClick: () -> Unit,
) {
    val border = when {
        suggested && action.enabled -> V4Accent
        !action.enabled -> V4Border
        else -> V4Border
    }
    Column(
        Modifier.fillMaxWidth()
            .background(if (suggested && action.enabled) V4AccentSoft else V4Raised, RoundedCornerShape(15.dp))
            .border(1.dp, border, RoundedCornerShape(15.dp))
            .clickable(enabled = action.enabled, onClick = onClick)
            .padding(10.dp),
        verticalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(
                action.title,
                color = if (action.enabled) V4Text else V4Muted,
                fontSize = 9.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.weight(1f),
            )
            if (suggested) Text("SUGERIDO", color = V4Accent, fontSize = 5.5.sp, fontWeight = FontWeight.Bold)
        }
        Text(action.effect, color = V4Muted, fontSize = 7.sp)
        action.disabledReason?.let { reason ->
            Text(reason, color = V4Warning, fontSize = 6.5.sp)
        }
        action.nextStep?.let { next ->
            Text("Depois: $next", color = if (action.enabled) V4Positive else V4Muted, fontSize = 6.5.sp)
        }
    }
}

@Composable
private fun V4PanelHeading(title: String, subtitle: String) {
    Column(
        Modifier.fillMaxWidth().background(V4RaisedStrong).padding(horizontal = 10.dp, vertical = 9.dp),
        verticalArrangement = Arrangement.spacedBy(3.dp),
    ) {
        Text(title, color = V4Text, fontSize = 10.sp, fontWeight = FontWeight.Bold, maxLines = 1, overflow = TextOverflow.Ellipsis)
        Text(subtitle, color = V4Muted, fontSize = 6.5.sp)
    }
}

@Composable
private fun V4Segment(
    label: String,
    active: Boolean,
    modifier: Modifier = Modifier,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        modifier = modifier.height(34.dp),
        shape = RoundedCornerShape(11.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) V4AccentSoft else V4Raised,
            contentColor = if (active) V4Accent else V4Muted,
        ),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 9.dp),
    ) { Text(label, fontSize = 6.8.sp, fontWeight = if (active) FontWeight.Bold else FontWeight.Normal) }
}

@Composable
private fun V4SmallAction(
    label: String,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier.height(34.dp),
        shape = RoundedCornerShape(11.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = V4Raised,
            contentColor = V4Text,
            disabledContainerColor = V4Raised.copy(alpha = 0.55f),
            disabledContentColor = V4Muted.copy(alpha = 0.55f),
        ),
    ) { Text(label, fontSize = 6.7.sp) }
}

@Composable
private fun V4SquareAction(
    label: String,
    active: Boolean = false,
    warning: Boolean = false,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.size(30.dp),
        shape = RoundedCornerShape(9.dp),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (active) V4AccentSoft else V4RaisedStrong,
            contentColor = when {
                warning -> V4Warning
                active -> V4Accent
                else -> V4Muted
            },
        ),
    ) { Text(label, fontSize = 7.sp, fontWeight = FontWeight.Bold) }
}

@Composable
private fun V4TinyChip(label: String, locked: Boolean, visible: Boolean) {
    Text(
        text = buildString {
            append(label)
            if (locked) append(" · bloqueada")
            if (!visible) append(" · oculta")
        },
        modifier = Modifier.background(V4RaisedStrong, RoundedCornerShape(9.dp)).padding(horizontal = 7.dp, vertical = 4.dp),
        color = when {
            locked -> V4Warning
            !visible -> V4Muted
            else -> V4Positive
        },
        fontSize = 6.sp,
        maxLines = 1,
    )
}

@Composable
private fun V4CapabilityChip(capability: WorldCapability) {
    Text(
        capability.label(),
        modifier = Modifier.background(V4RaisedStrong, RoundedCornerShape(9.dp)).padding(horizontal = 7.dp, vertical = 4.dp),
        color = V4Muted,
        fontSize = 5.7.sp,
    )
}

// WorldLayer persists a conventional 32-bit ARGB value inside a Long.
// Compose's Color(ULong) expects its internal 64-bit packed color format,
// including a valid color-space index, and must not receive this value.
private fun WorldLayer.color(): Color = Color((colorArgb and 0xFFFF_FFFFL).toInt())

private fun WorldLayerKind.label(): String = when (this) {
    WorldLayerKind.SURFACE -> "Superfície"
    WorldLayerKind.GEOMETRY -> "Geometria"
    WorldLayerKind.VOLUME -> "Volume"
    WorldLayerKind.GAMEPLAY -> "Gameplay"
    WorldLayerKind.LIGHTING -> "Iluminação"
    WorldLayerKind.UI -> "Interface"
    WorldLayerKind.CUSTOM -> "Personalizada"
}

private fun WorldActionGroup.label(): String = when (this) {
    WorldActionGroup.CREATE -> "Criar"
    WorldActionGroup.SHAPE -> "Modelar"
    WorldActionGroup.CONVERT -> "Converter"
    WorldActionGroup.ORGANIZE -> "Organizar"
    WorldActionGroup.GAMEPLAY -> "Gameplay"
    WorldActionGroup.VALIDATE -> "Validar"
}

private fun WorldCapability.label(): String = when (this) {
    WorldCapability.CREATE_SOURCE -> "Criar fonte"
    WorldCapability.TRANSFORM -> "Transformar"
    WorldCapability.EDIT_VERTICES -> "Vértices"
    WorldCapability.EDIT_FACES -> "Faces"
    WorldCapability.SCULPT_SURFACE -> "Esculpir"
    WorldCapability.PAINT_MATERIAL -> "Materiais"
    WorldCapability.EDIT_VOLUME -> "Voxel"
    WorldCapability.CONVERT_TO_EDITABLE_MESH -> "→ Malha"
    WorldCapability.CONVERT_TO_TERRAIN -> "→ Terreno"
    WorldCapability.CONVERT_TO_VOLUME -> "→ Volume"
    WorldCapability.GENERATE_COLLIDER -> "Colisão"
    WorldCapability.ASSIGN_LAYER -> "Camadas"
    WorldCapability.CONFIGURE_GAMEPLAY -> "Gameplay"
    WorldCapability.CONFIGURE_LIGHTING -> "Ambiente"
}

private fun validateWorldSummary(state: WorkspaceUiState): String {
    val document = state.sceneDocument ?: return "A cena ainda não foi carregada."
    val layers = document.worldLayers()
    val emptyLayers = layers.count { layer ->
        document.objects.none { it.worldLayerMembership()?.layerId == layer.id }
    }
    val locked = layers.count(WorldLayer::locked)
    val hidden = layers.count { !it.visible }
    val selected = document.resolveWorldAuthoringContext(state.selectedObjectId)
    return "World V4: ${layers.size} camadas, $emptyLayers vazias, $locked bloqueadas, $hidden ocultas. Seleção: ${selected.summary}."
}
