from pathlib import Path
import re


def read(path: str) -> str:
    return Path(path).read_text(encoding='utf-8')


def write(path: str, text: str) -> None:
    Path(path).write_text(text, encoding='utf-8')


def replace_once(path: str, old: str, new: str, label: str) -> None:
    text = read(path)
    if new in text:
        return
    if old not in text:
        raise RuntimeError(f'{label}: trecho não encontrado em {path}: {old[:180]!r}')
    write(path, text.replace(old, new, 1))


def replace_regex_once(path: str, pattern: str, replacement: str, label: str) -> None:
    text = read(path)
    if replacement in text:
        return
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE | re.DOTALL)
    if count != 1:
        raise RuntimeError(f'{label}: padrão retornou {count} correspondências em {path}')
    write(path, updated)


validation_path = 'core/model/src/main/kotlin/com/mobilegamestudio/core/model/SceneValidation.kt'
replace_once(
    validation_path,
    '''                is TerrainComponent -> if (
''',
    '''                is WorldLayerSetComponent -> if (
                    component.layers.isEmpty() ||
                    component.layers.size > 128 ||
                    component.layers.map { it.id }.distinct().size != component.layers.size ||
                    component.layers.any { layer ->
                        layer.id.isBlank() ||
                            layer.name.isBlank() ||
                            layer.order !in 0..127
                    } ||
                    (component.selectedLayerId != null && component.layers.none { it.id == component.selectedLayerId })
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is WorldLayerMembershipComponent -> if (
                    component.layerId.isBlank()
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is TerrainComponent -> if (
''',
    'world layer validation',
)

vm_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt'
replace_once(
    vm_path,
    'import com.mobilegamestudio.core.model.VisualNodeType\n',
    '''import com.mobilegamestudio.core.model.VisualNodeType
import com.mobilegamestudio.core.model.WORLD_LAYER_SYSTEM_TAG
import com.mobilegamestudio.core.model.WorldLayerKind
import com.mobilegamestudio.core.model.WorldLayerMembershipComponent
import com.mobilegamestudio.core.model.addWorldLayer
import com.mobilegamestudio.core.model.assignObjectToWorldLayer
import com.mobilegamestudio.core.model.ensureWorldLayerStructure
import com.mobilegamestudio.core.model.isWorldLayerLockedFor
import com.mobilegamestudio.core.model.renameWorldLayer
import com.mobilegamestudio.core.model.reorderWorldLayer
import com.mobilegamestudio.core.model.selectWorldLayer
import com.mobilegamestudio.core.model.toggleWorldLayerLock
import com.mobilegamestudio.core.model.toggleWorldLayerSolo
import com.mobilegamestudio.core.model.toggleWorldLayerVisibility
import com.mobilegamestudio.core.model.updateWorldObjectLocalVisibility
import com.mobilegamestudio.core.model.worldLayer
import com.mobilegamestudio.core.model.worldLayerMembership
''',
    'world layer imports',
)
replace_regex_once(
    vm_path,
    r'''    fun toggleObjectVisibility\(id: String\) \{.*?\n    \}\n\n    fun addAsset''',
    '''    fun toggleObjectVisibility(id: String) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        val objectValue = document.objects.firstOrNull { it.id == id } ?: return
        val currentLocal = objectValue.worldLayerMembership()?.localVisible ?: objectValue.enabled
        applyDocumentEdit(document.updateWorldObjectLocalVisibility(id, !currentLocal))
    }

    fun addAsset''',
    'layer-aware object visibility',
)
layer_methods = '''
    fun ensureWorldLayerStructure() {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        val prepared = document.ensureWorldLayerStructure()
        if (prepared != document) {
            applyDocumentEdit(prepared)
            mutableState.update { it.copy(message = "Estrutura de camadas do World Studio V4 criada para esta cena.") }
        }
    }

    fun createWorldLayer(name: String, kind: WorldLayerKind) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.addWorldLayer(name, kind))
        mutableState.update { it.copy(message = "Camada '$name' criada e selecionada.") }
    }

    fun selectWorldLayer(layerId: String) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.selectWorldLayer(layerId))
    }

    fun renameWorldLayer(layerId: String, name: String) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.renameWorldLayer(layerId, name))
    }

    fun moveWorldLayer(layerId: String, delta: Int) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.reorderWorldLayer(layerId, delta))
    }

    fun toggleWorldLayerVisibility(layerId: String) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.toggleWorldLayerVisibility(layerId))
    }

    fun toggleWorldLayerLock(layerId: String) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.toggleWorldLayerLock(layerId))
    }

    fun toggleWorldLayerSolo(layerId: String) {
        if (!canEdit()) return
        val document = mutableState.value.sceneDocument ?: return
        applyDocumentEdit(document.toggleWorldLayerSolo(layerId))
    }

    fun assignSelectedObjectToWorldLayer(layerId: String) {
        if (!canEdit()) return
        val selectedId = mutableState.value.selectedObjectId ?: run {
            mutableState.update { it.copy(message = "Selecione um objeto antes de atribuir uma camada.") }
            return
        }
        val document = mutableState.value.sceneDocument ?: return
        val target = document.worldLayer(layerId) ?: return
        if (target.locked) {
            mutableState.update { it.copy(message = "A camada '${target.name}' está bloqueada.") }
            return
        }
        applyDocumentEdit(document.assignObjectToWorldLayer(selectedId, layerId))
        mutableState.update { it.copy(message = "Objeto movido para a camada '${target.name}'.") }
    }

    private fun selectedWorldLayerIsLocked(): Boolean =
        mutableState.value.sceneDocument?.isWorldLayerLockedFor(mutableState.value.selectedObjectId) == true

'''
replace_once(vm_path, '    fun updateTerrainTool(\n', layer_methods + '    fun updateTerrainTool(\n', 'view model layer commands')
for method_name in ('updateSelectedTransform', 'setSelectedTransformValue'):
    pattern = rf'(    fun {method_name}\([^{{]+\{{\n)(        if \(!canEdit\(\)\) return\n)'
    text = read(vm_path)
    section = text[text.find(f'fun {method_name}'):text.find(f'fun {method_name}') + 450]
    if f'fun {method_name}' in text and 'selectedWorldLayerIsLocked()' not in section:
        updated, count = re.subn(
            pattern,
            r'\1\2        if (selectedWorldLayerIsLocked()) {\n            mutableState.update { it.copy(message = "A camada selecionada está bloqueada.") }\n            return\n        }\n',
            text,
            count=1,
            flags=re.MULTILINE,
        )
        if count != 1:
            raise RuntimeError(f'lock enforcement failed for {method_name}')
        write(vm_path, updated)
replace_once(
    vm_path,
    '        val updatedDocument = currentDocument.mergeEditorObjects(changed)\n',
    '        val updatedDocument = currentDocument.mergeEditorObjects(changed).ensureWorldLayerStructure()\n',
    'preserve layers in editor merge',
)
replace_once(
    vm_path,
    '''    private fun applyDocumentEdit(updatedDocument: SceneDocument) {
        val currentDocument = mutableState.value.sceneDocument ?: return
        if (currentDocument == updatedDocument) return
        val history = sceneHistory ?: return
        val result = history.execute(ReplaceSceneDocumentCommand(currentDocument, updatedDocument))
''',
    '''    private fun applyDocumentEdit(updatedDocument: SceneDocument) {
        val currentDocument = mutableState.value.sceneDocument ?: return
        val preparedDocument = updatedDocument.ensureWorldLayerStructure()
        if (currentDocument == preparedDocument) return
        val history = sceneHistory ?: return
        val result = history.execute(ReplaceSceneDocumentCommand(currentDocument, preparedDocument))
''',
    'normalize every document edit',
)
replace_once(
    vm_path,
    '''private fun SceneDocument.toEditorObjects(): List<EditorSceneObject> =
    objects.mapIndexed { index, item ->
''',
    '''private fun SceneDocument.toEditorObjects(): List<EditorSceneObject> =
    objects
        .filterNot { WORLD_LAYER_SYSTEM_TAG in it.tags }
        .mapIndexed { index, item ->
''',
    'hide world layer system object',
)
replace_once(
    vm_path,
    '''private fun SceneDocument.mergeEditorObjects(editorObjects: List<EditorSceneObject>): SceneDocument {
    val existingById = objects.associateBy(GameObject::id)
    val merged = editorObjects.map { editorObject ->
''',
    '''private fun SceneDocument.mergeEditorObjects(editorObjects: List<EditorSceneObject>): SceneDocument {
    val existingById = objects.associateBy(GameObject::id)
    val systemObjects = objects.filter { WORLD_LAYER_SYSTEM_TAG in it.tags }
    val merged = editorObjects.map { editorObject ->
''',
    'retain system objects start',
)
replace_once(
    vm_path,
    '''    return copy(
        objects = consistent,
        rootObjects = consistent.filter { it.parentId == null }.map(GameObject::id),
    )
}
''',
    '''    return copy(
        objects = consistent + systemObjects,
        rootObjects = (
            consistent.filter { it.parentId == null }.map(GameObject::id) +
                systemObjects.filter { it.parentId == null }.map(GameObject::id)
            ).distinct(),
    )
}
''',
    'retain system objects return',
)

screen_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt'
replace_once(
    screen_path,
    '    LaunchedEffect(state.message) {\n',
    '''    LaunchedEffect(state.sceneDocument?.sceneId) {
        if (state.sceneDocument != null) viewModel.ensureWorldLayerStructure()
    }

    LaunchedEffect(state.message) {
''',
    'load-time layer migration',
)
replace_once(
    screen_path,
    '''                onCreatePlayableWorld = viewModel::createPlayableWorld,
                onAssignTerrainTexture = viewModel::assignTerrainTexture,
''',
    '''                onCreatePlayableWorld = viewModel::createPlayableWorld,
                onCreateWorldLayer = viewModel::createWorldLayer,
                onSelectWorldLayer = viewModel::selectWorldLayer,
                onRenameWorldLayer = viewModel::renameWorldLayer,
                onMoveWorldLayer = viewModel::moveWorldLayer,
                onToggleWorldLayerVisibility = viewModel::toggleWorldLayerVisibility,
                onToggleWorldLayerLock = viewModel::toggleWorldLayerLock,
                onToggleWorldLayerSolo = viewModel::toggleWorldLayerSolo,
                onAssignSelectedToWorldLayer = viewModel::assignSelectedObjectToWorldLayer,
                onAssignTerrainTexture = viewModel::assignTerrainTexture,
''',
    'workspace layer callback binding',
)

shell_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt'
replace_once(shell_path, 'import com.mobilegamestudio.core.model.TerrainBrushMode\n', 'import com.mobilegamestudio.core.model.TerrainBrushMode\nimport com.mobilegamestudio.core.model.WorldLayerKind\n', 'shell WorldLayerKind import')
replace_once(
    shell_path,
    '''    onCreatePlayableWorld: () -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
''',
    '''    onCreatePlayableWorld: () -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onRenameWorldLayer: (String, String) -> Unit,
    onMoveWorldLayer: (String, Int) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
''',
    'shell callback signature',
)
replace_once(
    shell_path,
    '''                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onPlay = onTogglePreview,
                        onAssignTerrainTexture = onAssignTerrainTexture,
''',
    '''                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onCreateWorldLayer = onCreateWorldLayer,
                        onSelectWorldLayer = onSelectWorldLayer,
                        onRenameWorldLayer = onRenameWorldLayer,
                        onMoveWorldLayer = onMoveWorldLayer,
                        onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                        onToggleWorldLayerLock = onToggleWorldLayerLock,
                        onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                        onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                        onPlay = onTogglePreview,
                        onAssignTerrainTexture = onAssignTerrainTexture,
''',
    'shell world studio callback pass',
)

world_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt'
replace_once(world_path, 'import com.mobilegamestudio.core.model.VoxelVolumeComponent\n', 'import com.mobilegamestudio.core.model.VoxelVolumeComponent\nimport com.mobilegamestudio.core.model.WorldLayerKind\n', 'world WorldLayerKind import')
replace_once(
    world_path,
    '''    onCreatePlayableWorld: () -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
''',
    '''    onCreatePlayableWorld: () -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onRenameWorldLayer: (String, String) -> Unit,
    onMoveWorldLayer: (String, Int) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
    onAssignTerrainTexture: (String, String, Boolean) -> Unit,
''',
    'world callback signature',
)
replace_once(world_path, '    var drawerName by rememberSaveable { mutableStateOf(WorldV2Drawer.SCENE.name) }\n', '    var drawerName by rememberSaveable { mutableStateOf(WorldV2Drawer.STRUCTURE.name) }\n', 'world default drawer')
replace_once(world_path, '        val drawerWidth = if (compact) 190.dp else 224.dp\n', '        val drawerWidth = if (compact) 258.dp else 304.dp\n', 'world drawer width')
replace_once(
    world_path,
    '''                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onCreateEditableMesh = onCreateEditableMesh,
                        onCreateVoxelVolume = onCreateVoxelVolume,
                        onImportAsset = onImportAsset,
                    )
''',
    '''                        onCreatePlayableWorld = onCreatePlayableWorld,
                        onCreateWorldLayer = onCreateWorldLayer,
                        onSelectWorldLayer = onSelectWorldLayer,
                        onRenameWorldLayer = onRenameWorldLayer,
                        onMoveWorldLayer = onMoveWorldLayer,
                        onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
                        onToggleWorldLayerLock = onToggleWorldLayerLock,
                        onToggleWorldLayerSolo = onToggleWorldLayerSolo,
                        onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
                        onCreateEditableMesh = onCreateEditableMesh,
                        onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                        onCreateVoxelVolume = onCreateVoxelVolume,
                        onConvertMeshToVoxel = onConvertMeshToVoxel,
                        onRequestedMode = { requested ->
                            drawerName = WorldV2Drawer.NONE.name
                            when (requested) {
                                WorldStudioV4RequestedMode.OBJECTS -> { modeName = StudioV3Mode.OBJECTS.name; surfaceEditing = false }
                                WorldStudioV4RequestedMode.TERRAIN -> { modeName = StudioV3Mode.SCULPT.name; surfaceEditing = true }
                                WorldStudioV4RequestedMode.PAINT -> {
                                    modeName = StudioV3Mode.PAINT.name
                                    surfaceEditing = true
                                    onTerrainToolChange(TerrainBrushMode.PAINT, null, null, null, null)
                                }
                                WorldStudioV4RequestedMode.MESH -> { modeName = StudioV3Mode.MESH.name; surfaceEditing = false }
                                WorldStudioV4RequestedMode.VOLUME -> { modeName = StudioV3Mode.VOLUME.name; surfaceEditing = false }
                            }
                        },
                        onOpenStructure = { drawerName = WorldV2Drawer.STRUCTURE.name },
                        onDiagnostic = onDiagnostic,
                        onImportAsset = onImportAsset,
                    )
''',
    'world drawer callback pass',
)
replace_once(
    world_path,
    '''                        onSurfaceEditing = { surfaceEditing = it },
                        onToolSelected = onToolSelected,
                    )

                    Box(
''',
    '''                        onSurfaceEditing = { surfaceEditing = it },
                        onToolSelected = onToolSelected,
                    )
                    WorldStudioV4ContextStrip(
                        state = state,
                        onOpenAuthor = { drawerName = WorldV2Drawer.AUTHOR.name },
                    )

                    Box(
''',
    'world context strip',
)
replace_once(world_path, 'private enum class WorldV2Drawer { NONE, SCENE, CREATE, WORLD, ASSETS }\n', 'private enum class WorldV2Drawer { NONE, STRUCTURE, CREATE, AUTHOR, ASSETS }\n', 'world drawer enum')
new_drawer = r'''@Composable
private fun WorldV2DrawerPanel(
    drawer: WorldV2Drawer,
    state: WorkspaceUiState,
    width: Dp,
    onSelectObject: (String) -> Unit,
    onToggleVisibility: (String) -> Unit,
    onAddPrimitive: (PrimitiveMesh) -> Unit,
    onAddSceneObject: (EditorObjectType) -> Unit,
    onCreateFlatTerrain: (Int, Float, Float) -> Unit,
    onCreatePlayableWorld: () -> Unit,
    onCreateWorldLayer: (String, WorldLayerKind) -> Unit,
    onSelectWorldLayer: (String) -> Unit,
    onRenameWorldLayer: (String, String) -> Unit,
    onMoveWorldLayer: (String, Int) -> Unit,
    onToggleWorldLayerVisibility: (String) -> Unit,
    onToggleWorldLayerLock: (String) -> Unit,
    onToggleWorldLayerSolo: (String) -> Unit,
    onAssignSelectedToWorldLayer: (String) -> Unit,
    onCreateEditableMesh: (PrimitiveMesh) -> Unit,
    onConvertSelectedToEditableMesh: () -> Unit,
    onCreateVoxelVolume: (Int, Boolean) -> Unit,
    onConvertMeshToVoxel: (Int) -> Unit,
    onRequestedMode: (WorldStudioV4RequestedMode) -> Unit,
    onOpenStructure: () -> Unit,
    onDiagnostic: (String) -> Unit,
    onImportAsset: () -> Unit,
) {
    Column(Modifier.width(width).fillMaxHeight().background(WorldV2Panel).border(1.dp, WorldV2Border)) {
        when (drawer) {
            WorldV2Drawer.STRUCTURE -> WorldStudioV4StructurePanel(
                state = state,
                onSelectObject = onSelectObject,
                onSelectLayer = onSelectWorldLayer,
                onCreateLayer = onCreateWorldLayer,
                onRenameLayer = onRenameWorldLayer,
                onMoveLayer = onMoveWorldLayer,
                onToggleLayerVisibility = onToggleWorldLayerVisibility,
                onToggleLayerLock = onToggleWorldLayerLock,
                onToggleLayerSolo = onToggleWorldLayerSolo,
                onAssignSelectedToLayer = onAssignSelectedToWorldLayer,
            )
            WorldV2Drawer.CREATE -> Column(Modifier.fillMaxSize().padding(10.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
                Text("FONTES", color = WorldV2Muted, fontSize = 8.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.8.sp)
                Text("Crie somente a fonte. Conversões e próximas etapas aparecem em Autor conforme a seleção.", color = WorldV2Muted, fontSize = 7.sp)
                WorldV2Action("Cubo primitivo", "Fonte rápida · camada Geometria") { onAddPrimitive(PrimitiveMesh.CUBE) }
                WorldV2Action("Plano primitivo", "Base rápida · camada Geometria") { onAddPrimitive(PrimitiveMesh.PLANE) }
                WorldV2Action("Superfície", "Terrain 65² · camada Superfície") { onCreateFlatTerrain(65, 96f, 20f) }
                WorldV2Action("Forma editável", "Cubo com vértices e faces") { onCreateEditableMesh(PrimitiveMesh.CUBE) }
                WorldV2Action("Volume vazio", "Campo voxel para escultura") { onCreateVoxelVolume(24, false) }
                Text("CENA", color = WorldV2Muted, fontSize = 8.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.8.sp, modifier = Modifier.padding(top = 6.dp))
                WorldV2Action("Jogador", "Objeto técnico de gameplay") { onAddSceneObject(EditorObjectType.PLAYER) }
                WorldV2Action("Câmera", "Objeto técnico de visão") { onAddSceneObject(EditorObjectType.CAMERA) }
                WorldV2Action("Luz direcional", "Objeto técnico de ambiente") { onAddSceneObject(EditorObjectType.LIGHT) }
            }
            WorldV2Drawer.AUTHOR -> WorldStudioV4AuthorPanel(
                state = state,
                onCreateFlatTerrain = onCreateFlatTerrain,
                onCreateEditableMesh = onCreateEditableMesh,
                onCreateVoxelVolume = onCreateVoxelVolume,
                onCreatePlayableWorld = onCreatePlayableWorld,
                onConvertSelectedToEditableMesh = onConvertSelectedToEditableMesh,
                onConvertMeshToVoxel = onConvertMeshToVoxel,
                onRequestedMode = onRequestedMode,
                onOpenStructure = onOpenStructure,
                onDiagnostic = onDiagnostic,
            )
            WorldV2Drawer.ASSETS -> Column(Modifier.fillMaxSize().padding(10.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
                Text("BIBLIOTECA", color = WorldV2Muted, fontSize = 8.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.8.sp)
                WorldV2PrimaryAction("Importar recurso", "GLB, PNG, JPG e WebP", onImportAsset)
                Text("${state.assets.size} assets no projeto", color = WorldV2Muted, fontSize = 8.sp, modifier = Modifier.padding(4.dp))
                Text("O uso do asset será sugerido conforme terreno, malha, material ou objeto selecionado.", color = WorldV2Muted, fontSize = 7.sp)
            }
            WorldV2Drawer.NONE -> Unit
        }
    }
}

@Composable
private fun WorldV2ModeBar'''
replace_regex_once(world_path, r'''@Composable\nprivate fun WorldV2DrawerPanel\(.*?\n\}\n\n@Composable\nprivate fun WorldV2ModeBar''', new_drawer, 'replace disconnected world drawers')
text = read(world_path)
text = text.replace('Triple(WorldV2Drawer.SCENE, "◇", "Cena")', 'Triple(WorldV2Drawer.STRUCTURE, "▤", "Estrut.")')
text = text.replace('Triple(WorldV2Drawer.WORLD, "⌁", "Mundo")', 'Triple(WorldV2Drawer.AUTHOR, "⌁", "Autor")')
write(world_path, text)
replace_once(
    world_path,
    '''        if (selected == null) {
            WorldV2PrimaryAction("Criar mundo jogável", "Fluxo mínimo completo para testar", onCreatePlayableWorld)
            Text("Selecione um objeto na cena para editar suas propriedades.", color = WorldV2Muted, fontSize = 8.sp)
            return@Column
        }
''',
    '''        if (selected == null) {
            Text("Nenhum objeto selecionado.", color = WorldV2Text, fontSize = 10.sp, fontWeight = FontWeight.Bold)
            Text("Use Estrutura para escolher uma camada ou objeto. Use Autor para ver ações válidas e a próxima etapa.", color = WorldV2Muted, fontSize = 8.sp)
            return@Column
        }
''',
    'remove inspector duplicate preset',
)

print('World Studio V4 foundation patch applied')
