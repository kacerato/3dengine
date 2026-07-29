package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.PrimitiveMesh
import java.io.File

@Composable
internal fun SceneWorkspace(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onDuplicateSelected: () -> Unit,
    onDeleteSelected: () -> Unit,
    onRenameSelected: (String) -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    resolveAsset: (String) -> File?,
    onObjectSelected: (String?) -> Unit,
    onTransformDrag: (Float, Float) -> Unit,
    onDiagnostic: (String) -> Unit,
    onPreviewAction: (String) -> Unit,
    onImportAsset: () -> Unit,
) {
    BoxWithConstraints(Modifier.fillMaxSize()) {
        val hierarchyWidth = if (maxWidth >= 900.dp) 210.dp else 168.dp
        val inspectorWidth = if (maxWidth >= 900.dp) 268.dp else 218.dp
        Row(Modifier.fillMaxSize()) {
            HierarchyPanel(
                objects = state.sceneObjects,
                selectedObjectId = state.selectedObjectId,
                onSelectObject = onSelectObject,
                onToggleVisibility = onToggleVisibility,
                onAddPrimitive = onAddPrimitive,
                onAddSceneObject = onAddSceneObject,
            onDuplicateSelected = onDuplicateSelected,
            onDeleteSelected = onDeleteSelected,
            showCreationActions = true,
            modifier = Modifier.width(hierarchyWidth),
            )
            Column(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight(),
            ) {
                SceneViewport(
                    state = state,
                    resolveAsset = resolveAsset,
                    onObjectSelected = onObjectSelected,
                    onTransformDrag = onTransformDrag,
                    onDiagnostic = onDiagnostic,
                    onPreviewAction = onPreviewAction,
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth(),
                )
                QuickAssetsPanel(
                    assets = state.assets,
                    isImporting = state.isImportingAsset,
                    onAddAsset = onAddAsset,
                    onImportAsset = onImportAsset,
                )
            }
            InspectorPanel(
                selectedObject = state.selectedObject,
            onTransformChange = onTransformChange,
            onRename = onRenameSelected,
            showPanelHeader = true,
            modifier = Modifier.width(inspectorWidth),
            )
        }
    }
}

@Composable
internal fun ObjectsWorkspace(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onDuplicateSelected: () -> Unit,
    onDeleteSelected: () -> Unit,
    onRenameSelected: (String) -> Unit,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxSize()
            .padding(12.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        HierarchyPanel(
            objects = state.sceneObjects,
            selectedObjectId = state.selectedObjectId,
            onSelectObject = onSelectObject,
            onToggleVisibility = onToggleVisibility,
            onAddPrimitive = onAddPrimitive,
            onAddSceneObject = onAddSceneObject,
            onDuplicateSelected = onDuplicateSelected,
            onDeleteSelected = onDeleteSelected,
            showCreationActions = true,
            modifier = Modifier.weight(1f),
        )
        InspectorPanel(
            selectedObject = state.selectedObject,
            onTransformChange = onTransformChange,
            onRename = onRenameSelected,
            showPanelHeader = true,
            modifier = Modifier.weight(1f),
        )
    }
}

@Composable
internal fun HierarchyPanel(
    objects: List<EditorSceneObject>,
    selectedObjectId: String?,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onDuplicateSelected: () -> Unit,
    onDeleteSelected: () -> Unit,
    showCreationActions: Boolean = true,
    showPanelHeader: Boolean = true,
    modifier: Modifier = Modifier,
) {
    val content: @Composable () -> Unit = {
        LazyColumn(Modifier.fillMaxSize()) {
            item {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .background(RaisedBackground)
                        .padding(6.dp),
                ) {
                    if (showCreationActions) {
                        Row {
                            StudioTextButton("+ Cubo", { onAddPrimitive(PrimitiveMesh.CUBE) })
                            StudioTextButton("+ Plano", { onAddPrimitive(PrimitiveMesh.PLANE) })
                        }
                        Row {
                            StudioTextButton("+ Câmera", { onAddSceneObject(EditorObjectType.CAMERA) })
                            StudioTextButton("+ Luz", { onAddSceneObject(EditorObjectType.LIGHT) })
                        }
                    }
                    Row {
                        StudioTextButton("Duplicar", onDuplicateSelected, enabled = selectedObjectId != null)
                        StudioTextButton("Excluir", onDeleteSelected, enabled = selectedObjectId != null)
                    }
                }
            }
            items(objects, key = { it.id }) { item ->
                val selected = item.id == selectedObjectId
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .background(if (selected) AccentMuted else Color.Transparent)
                        .clickable { onSelectObject(item.id) }
                        .height(EditorTouchTargets.Primary)
                        .padding(start = if (item.parentId == null) 10.dp else 24.dp, end = 5.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        objectGlyph(item.type),
                        modifier = Modifier.width(24.dp),
                        color = if (selected) Accent else SecondaryText,
                        fontSize = 12.sp,
                    )
                    Text(
                        item.name,
                        modifier = Modifier.weight(1f),
                        color = if (selected) PrimaryText else SecondaryText,
                        fontSize = 12.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    TextButton(
                        onClick = { onToggleVisibility(item.id) },
                        modifier = Modifier
                            .width(EditorTouchTargets.Primary)
                            .height(EditorTouchTargets.Primary),
                        contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
                    ) {
                        Text(
                            if (item.isVisible) "●" else "○",
                            color = if (item.isVisible) Positive else SecondaryText,
                            fontSize = 10.sp,
                        )
                    }
                }
            }
        }
    }
    if (showPanelHeader) {
        WorkspacePanel(
            title = "HIERARQUIA",
            subtitle = "${objects.size} objetos",
            modifier = modifier.fillMaxHeight(),
            content = content,
        )
    } else {
        Box(modifier.fillMaxSize()) { content() }
    }
}

@Composable
internal fun InspectorPanel(
    selectedObject: EditorSceneObject?,
    onTransformChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onTransformValueChange: ((TransformProperty, TransformAxis, Float) -> Unit)? = null,
    onRename: (String) -> Unit,
    showPanelHeader: Boolean = true,
    modifier: Modifier = Modifier,
) {
    val content: @Composable () -> Unit = {
        if (selectedObject == null) {
            Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Text("Selecione um objeto da cena", color = SecondaryText, fontSize = 12.sp)
            }
        } else {
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                verticalArrangement = Arrangement.spacedBy(10.dp),
            ) {
                item(key = selectedObject.id) {
                var editableName by remember(selectedObject.id, selectedObject.name) {
                    mutableStateOf(selectedObject.name)
                }
                    Column(Modifier.padding(horizontal = 10.dp, vertical = 8.dp)) {
                        OutlinedTextField(
                            value = editableName,
                            onValueChange = { editableName = it.take(64) },
                            modifier = Modifier.fillMaxWidth(),
                            singleLine = true,
                            label = { Text("Nome") },
                        )
                        StudioTextButton(
                            "Aplicar nome",
                            { onRename(editableName) },
                            enabled = editableName.trim().isNotEmpty() && editableName.trim() != selectedObject.name,
                        )
                        Text(
                            selectedObject.id,
                            color = SecondaryText,
                            fontFamily = FontFamily.Monospace,
                            fontSize = 9.sp,
                        )
                    }
                }
                item {
                    TransformSection(
                        title = "POSIÇÃO",
                        values = selectedObject.transform.position,
                        step = 0.25f,
                        onChange = { axis, delta ->
                            onTransformChange(TransformProperty.POSITION, axis, delta)
                        },
                        onValueCommit = { axis, value ->
                            onTransformValueChange?.invoke(TransformProperty.POSITION, axis, value)
                        },
                    )
                }
                item {
                    TransformSection(
                        title = "ROTAÇÃO",
                        values = selectedObject.transform.rotation,
                        step = 5f,
                        onChange = { axis, delta ->
                            onTransformChange(TransformProperty.ROTATION, axis, delta)
                        },
                        onValueCommit = { axis, value ->
                            onTransformValueChange?.invoke(TransformProperty.ROTATION, axis, value)
                        },
                    )
                }
                item {
                    TransformSection(
                        title = "ESCALA",
                        values = selectedObject.transform.scale,
                        step = 0.1f,
                        onChange = { axis, delta ->
                            onTransformChange(TransformProperty.SCALE, axis, delta)
                        },
                        onValueCommit = { axis, value ->
                            onTransformValueChange?.invoke(TransformProperty.SCALE, axis, value)
                        },
                    )
                }
                selectedObject.collider?.let { collider ->
                    item {
                        Column(
                            Modifier
                                .fillMaxWidth()
                                .background(RaisedBackground)
                                .padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp),
                        ) {
                            Text("COLISÃO · ${collider.shape}", color = SecondaryText, fontSize = 9.sp)
                            AxisValue("X", collider.size.x, Color(0xFFD56A63), {
                                onTransformChange(TransformProperty.COLLIDER_SIZE, TransformAxis.X, it * 0.1f)
                            }, {
                                onTransformValueChange?.invoke(TransformProperty.COLLIDER_SIZE, TransformAxis.X, it)
                            })
                            AxisValue("Y", collider.size.y, Color(0xFF68A67D), {
                                onTransformChange(TransformProperty.COLLIDER_SIZE, TransformAxis.Y, it * 0.1f)
                            }, {
                                onTransformValueChange?.invoke(TransformProperty.COLLIDER_SIZE, TransformAxis.Y, it)
                            })
                            AxisValue("Z", collider.size.z, Color(0xFF6591C7), {
                                onTransformChange(TransformProperty.COLLIDER_SIZE, TransformAxis.Z, it * 0.1f)
                            }, {
                                onTransformValueChange?.invoke(TransformProperty.COLLIDER_SIZE, TransformAxis.Z, it)
                            })
                        }
                    }
                }
                selectedObject.vehicle?.let { vehicle ->
                    item {
                        Column(
                            Modifier
                                .fillMaxWidth()
                                .background(RaisedBackground)
                                .padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp),
                        ) {
                            Text("VEÍCULO · ${vehicle.driveType}", color = SecondaryText, fontSize = 9.sp)
                            ComponentNumberValue("MASSA KG", vehicle.massKg, 25f, TransformProperty.VEHICLE_MASS, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("POTÊNCIA KW", vehicle.enginePowerKw, 5f, TransformProperty.VEHICLE_POWER, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("TORQUE NM", vehicle.maxTorqueNm, 10f, TransformProperty.VEHICLE_TORQUE, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("VELOCIDADE KM/H", vehicle.topSpeedKph, 5f, TransformProperty.VEHICLE_TOP_SPEED, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("DIREÇÃO °", vehicle.maxSteeringDegrees, 1f, TransformProperty.VEHICLE_STEERING, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("FREIO N", vehicle.brakeForce, 500f, TransformProperty.VEHICLE_BRAKE, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("ADERÊNCIA", vehicle.tireGrip, 0.05f, TransformProperty.VEHICLE_GRIP, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("RAIO DA RODA M", vehicle.wheelRadiusMeters, 0.01f, TransformProperty.VEHICLE_WHEEL_RADIUS, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("CURSO SUSPENSÃO M", vehicle.suspensionTravelMeters, 0.01f, TransformProperty.VEHICLE_SUSPENSION_TRAVEL, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("MOLA N/M", vehicle.suspensionStiffness, 1_000f, TransformProperty.VEHICLE_SUSPENSION_STIFFNESS, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("AMORTECEDOR", vehicle.suspensionDamping, 250f, TransformProperty.VEHICLE_SUSPENSION_DAMPING, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("DOWNFORCE", vehicle.downforceCoefficient, 0.05f, TransformProperty.VEHICLE_DOWNFORCE, onTransformChange, onTransformValueChange)
                            Text(
                                "Câmbio ${vehicle.gearboxRatios.size} marchas · ${vehicle.wheels.size} rodas físicas · ${vehicle.driveType}",
                                color = SecondaryText,
                                fontSize = 8.sp,
                            )
                        }
                    }
                }
                selectedObject.pbrMaterial?.let { material ->
                    item {
                        Column(
                            Modifier.fillMaxWidth().background(RaisedBackground).padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp),
                        ) {
                            Text("MATERIAL PBR · ${material.materialId}", color = SecondaryText, fontSize = 9.sp)
                            Text(
                                "Slot ${material.targetSlot ?: "todos"} · metal ${material.metallic} · rugosidade ${material.roughness}",
                                color = AccentBright,
                                fontSize = 8.sp,
                            )
                            Text(
                                listOfNotNull(
                                    material.baseColorTextureAssetId?.let { "Base Color" },
                                    material.normalTextureAssetId?.let { "Normal" },
                                    material.metallicRoughnessTextureAssetId?.let { "Metal/Rough" },
                                    material.occlusionTextureAssetId?.let { "AO" },
                                    material.emissiveTextureAssetId?.let { "Emission" },
                                ).ifEmpty { listOf("Texturas incorporadas no GLB") }.joinToString(" · "),
                                color = SecondaryText,
                                fontSize = 8.sp,
                            )
                            ComponentNumberValue("METÁLICO", material.metallic, 0.05f, TransformProperty.PBR_METALLIC, onTransformChange, onTransformValueChange)
                            ComponentNumberValue("RUGOSIDADE", material.roughness, 0.05f, TransformProperty.PBR_ROUGHNESS, onTransformChange, onTransformValueChange)
                        }
                    }
                }
                selectedObject.meshModifiers?.let { stack ->
                    item {
                        Column(
                            Modifier.fillMaxWidth().background(RaisedBackground).padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(3.dp),
                        ) {
                            Text("EDITOR DE MALHA · NÃO DESTRUTIVO", color = SecondaryText, fontSize = 9.sp)
                            stack.modifiers.forEach { modifier ->
                                Text(
                                    "${if (modifier.enabled) "ON" else "OFF"}  ${modifier.type}  ${modifier.targetNodeName ?: "malha inteira"}",
                                    color = AccentBright,
                                    fontFamily = FontFamily.Monospace,
                                    fontSize = 8.sp,
                                )
                            }
                            stack.modifiers.firstOrNull()?.let { modifier ->
                                ComponentNumberValue(
                                    "VALOR · ${modifier.type}",
                                    modifier.amount,
                                    0.05f,
                                    TransformProperty.MESH_MODIFIER_AMOUNT,
                                    onTransformChange,
                                    onTransformValueChange,
                                )
                            }
                        }
                    }
                }
                selectedObject.animationPack?.let { pack ->
                    item {
                        Column(
                            Modifier.fillMaxWidth().background(RaisedBackground).padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(3.dp),
                        ) {
                            Text("PACK DE ANIMAÇÃO", color = SecondaryText, fontSize = 9.sp)
                            Text("${pack.clipMappings.size} clips · retarget ${pack.retargetProfile.hips}", color = AccentBright, fontSize = 8.sp)
                            pack.clipMappings.take(8).forEach {
                                Text("${it.sourceClip} → ${it.stateName}", color = SecondaryText, fontSize = 8.sp)
                            }
                        }
                    }
                }
                selectedObject.vegetation?.let { vegetation ->
                    item {
                        Column(
                            Modifier.fillMaxWidth().background(RaisedBackground).padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(3.dp),
                        ) {
                            Text("VEGETAÇÃO 3D", color = SecondaryText, fontSize = 9.sp)
                            Text(
                                "${vegetation.maxInstances} instâncias · densidade ${vegetation.densityPerSquareMeter}/m² · LOD ${vegetation.lodDistancesMeters.joinToString()}",
                                color = AccentBright,
                                fontSize = 8.sp,
                            )
                            Text(
                                if (vegetation.modelAssetIds.isEmpty()) "Grama 3D interna" else "${vegetation.modelAssetIds.size} modelos externos",
                                color = SecondaryText,
                                fontSize = 8.sp,
                            )
                            ComponentNumberValue(
                                "DENSIDADE / M²",
                                vegetation.densityPerSquareMeter,
                                0.005f,
                                TransformProperty.VEGETATION_DENSITY,
                                onTransformChange,
                                onTransformValueChange,
                            )
                        }
                    }
                }
                if (
                    selectedObject.luaScriptPaths.isNotEmpty() ||
                    selectedObject.visualGraphPaths.isNotEmpty() ||
                    selectedObject.animation != null
                ) {
                    item {
                        Column(
                            Modifier
                                .fillMaxWidth()
                                .background(RaisedBackground)
                                .padding(9.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp),
                        ) {
                            Text("LIGAÇÕES ATIVAS", color = SecondaryText, fontSize = 9.sp)
                            selectedObject.luaScriptPaths.forEach {
                                Text("LUA  $it", color = AccentBright, fontFamily = FontFamily.Monospace, fontSize = 8.sp)
                            }
                            selectedObject.visualGraphPaths.forEach {
                                Text("NOCODE  $it", color = AccentBright, fontFamily = FontFamily.Monospace, fontSize = 8.sp)
                            }
                            selectedObject.animation?.let {
                                ComponentNumberValue(
                                    "VELOCIDADE DA ANIMAÇÃO",
                                    it.playbackSpeed,
                                    0.1f,
                                    TransformProperty.ANIMATION_SPEED,
                                    onTransformChange,
                                    onTransformValueChange,
                                )
                                Text(
                                    "ANIMAÇÃO  ${it.defaultClip} · ${it.availableClips.joinToString()}",
                                    color = AccentBright,
                                    fontFamily = FontFamily.Monospace,
                                    fontSize = 8.sp,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    if (showPanelHeader) {
        WorkspacePanel(
            title = "INSPECTOR",
            subtitle = selectedObject?.type?.label ?: "Nenhuma seleção",
            modifier = modifier.fillMaxHeight(),
            content = content,
        )
    } else {
        Box(modifier.fillMaxSize()) { content() }
    }
}

@Composable
private fun ComponentNumberValue(
    label: String,
    value: Float,
    step: Float,
    property: TransformProperty,
    onChange: (TransformProperty, TransformAxis, Float) -> Unit,
    onValueCommit: ((TransformProperty, TransformAxis, Float) -> Unit)?,
) {
    Column {
        Text(label, color = SecondaryText, fontSize = 8.sp)
        AxisValue(
            "",
            value,
            AccentBright,
            onStep = { onChange(property, TransformAxis.X, it * step) },
            onCommit = { onValueCommit?.invoke(property, TransformAxis.X, it) },
        )
    }
}

@Composable
private fun TransformSection(
    title: String,
    values: EditorVector3,
    step: Float,
    onChange: (TransformAxis, Float) -> Unit,
    onValueCommit: (TransformAxis, Float) -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(RaisedBackground)
            .padding(9.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        Text(title, color = SecondaryText, fontSize = 9.sp, letterSpacing = 0.7.sp)
        AxisValue(
            "X",
            values.x,
            Color(0xFFD56A63),
            onStep = { onChange(TransformAxis.X, it * step) },
            onCommit = { onValueCommit(TransformAxis.X, it) },
        )
        AxisValue(
            "Y",
            values.y,
            Color(0xFF68A67D),
            onStep = { onChange(TransformAxis.Y, it * step) },
            onCommit = { onValueCommit(TransformAxis.Y, it) },
        )
        AxisValue(
            "Z",
            values.z,
            Color(0xFF6591C7),
            onStep = { onChange(TransformAxis.Z, it * step) },
            onCommit = { onValueCommit(TransformAxis.Z, it) },
        )
    }
}

@Composable
private fun AxisValue(
    axis: String,
    value: Float,
    axisColor: Color,
    onStep: (Float) -> Unit,
    onCommit: (Float) -> Unit,
) {
    var draft by remember(value) { mutableStateOf("%.2f".format(value)) }
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(axis, modifier = Modifier.width(18.dp), color = axisColor, fontWeight = FontWeight.Bold)
        StudioTextButton("−", { onStep(-1f) })
        OutlinedTextField(
            value = draft,
            onValueChange = { input ->
                if (input.length <= 12) draft = input.replace(',', '.')
            },
            modifier = Modifier
                .weight(1f)
                .height(EditorTouchTargets.Primary),
            textStyle = androidx.compose.ui.text.TextStyle(
                color = PrimaryText,
                fontFamily = FontFamily.Monospace,
                fontSize = 11.sp,
            ),
            singleLine = true,
            keyboardOptions = KeyboardOptions(
                keyboardType = KeyboardType.Decimal,
                imeAction = ImeAction.Done,
            ),
            keyboardActions = KeyboardActions(
                onDone = { draft.toFloatOrNull()?.let(onCommit) },
            ),
        )
        StudioTextButton("+", { onStep(1f) })
    }
}
