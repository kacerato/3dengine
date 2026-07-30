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
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
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
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupProperties
import com.mobilegamestudio.core.model.AssetRecord

private enum class ManagedExplorerTab { PROJECT, LOGIC }
private enum class ManagedLogicKind { LUA, NOCODE }

private data class ManagedLogicResource(
    val ownerId: String,
    val ownerName: String,
    val path: String,
    val kind: ManagedLogicKind,
)

private data class LogicEditorRequest(
    val kind: ManagedLogicKind,
    val current: ManagedLogicResource? = null,
)

@Composable
internal fun ManagedResourceExplorerPanel(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
    onOpenScript: (String, String) -> Unit,
    onOpenGraph: (String, String) -> Unit,
    onCreateScriptAt: (String, String) -> Unit,
    onCreateGraphAt: (String, String) -> Unit,
    onMoveLogicResource: (String, String, String, String) -> Unit,
    onDeleteLogicResource: (String, String) -> Unit,
    onImportAsset: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
) {
    var tabName by rememberSaveable { mutableStateOf(ManagedExplorerTab.LOGIC.name) }
    val tab = ManagedExplorerTab.valueOf(tabName)
    var query by rememberSaveable { mutableStateOf("") }
    var editorRequest by remember { mutableStateOf<LogicEditorRequest?>(null) }
    val resources = remember(state.sceneObjects) {
        buildList {
            state.sceneObjects.forEach { sceneObject ->
                sceneObject.luaScriptPaths.forEach { path ->
                    add(ManagedLogicResource(sceneObject.id, sceneObject.name, path, ManagedLogicKind.LUA))
                }
                sceneObject.visualGraphPaths.forEach { path ->
                    add(ManagedLogicResource(sceneObject.id, sceneObject.name, path, ManagedLogicKind.NOCODE))
                }
            }
        }.sortedWith(compareBy<ManagedLogicResource> { it.path.substringBeforeLast('/', "") }.thenBy { it.path })
    }

    Column(Modifier.fillMaxSize()) {
        Row(
            Modifier
                .fillMaxWidth()
                .height(38.dp)
                .background(RaisedBackground)
                .border(1.dp, WorkspaceBorder),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            ManagedTabButton("LÓGICA ${resources.size}", tab == ManagedExplorerTab.LOGIC) {
                tabName = ManagedExplorerTab.LOGIC.name
            }
            ManagedTabButton("PROJETO", tab == ManagedExplorerTab.PROJECT) {
                tabName = ManagedExplorerTab.PROJECT.name
            }
        }
        OutlinedTextField(
            value = query,
            onValueChange = { query = it.take(80) },
            modifier = Modifier.fillMaxWidth().padding(horizontal = 7.dp, vertical = 5.dp),
            label = { Text(if (tab == ManagedExplorerTab.LOGIC) "Buscar Lua ou NoCode" else "Buscar recurso", fontSize = 8.sp) },
            singleLine = true,
        )
        when (tab) {
            ManagedExplorerTab.LOGIC -> LogicResourceList(
                state = state,
                resources = resources.filter {
                    query.isBlank() || it.path.contains(query, true) || it.ownerName.contains(query, true)
                },
                onCreate = { editorRequest = LogicEditorRequest(it) },
                onOpen = { item ->
                    onSelectObject(item.ownerId)
                    if (item.kind == ManagedLogicKind.LUA) onOpenScript(item.ownerId, item.path)
                    else onOpenGraph(item.ownerId, item.path)
                },
                onManage = { editorRequest = LogicEditorRequest(it.kind, it) },
                onDelete = onDeleteLogicResource,
            )
            ManagedExplorerTab.PROJECT -> ProjectResourceList(
                state = state,
                query = query,
                onImportAsset = onImportAsset,
                onAddAsset = onAddAsset,
            )
        }
    }

    editorRequest?.let { request ->
        LogicPathEditor(
            request = request,
            selectedObjectName = state.selectedObject?.name,
            existingResources = resources,
            onDismiss = { editorRequest = null },
            onConfirm = { folder, name ->
                val current = request.current
                if (current == null) {
                    if (request.kind == ManagedLogicKind.LUA) onCreateScriptAt(folder, name)
                    else onCreateGraphAt(folder, name)
                } else {
                    onMoveLogicResource(current.ownerId, current.path, folder, name)
                }
                editorRequest = null
            },
            onDelete = request.current?.let { current ->
                {
                    onDeleteLogicResource(current.ownerId, current.path)
                    editorRequest = null
                }
            },
        )
    }
}

@Composable
private fun LogicResourceList(
    state: WorkspaceUiState,
    resources: List<ManagedLogicResource>,
    onCreate: (ManagedLogicKind) -> Unit,
    onOpen: (ManagedLogicResource) -> Unit,
    onManage: (ManagedLogicResource) -> Unit,
    onDelete: (String, String) -> Unit,
) {
    Column(Modifier.fillMaxSize()) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(horizontal = 7.dp, vertical = 4.dp),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                state.selectedObject?.let { "Vincular em: ${it.name}" } ?: "Selecione um objeto da cena para criar lógica",
                modifier = Modifier.weight(1f),
                color = if (state.selectedObject == null) ErrorText else SecondaryText,
                fontSize = 8.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            ManagedSmallButton("+ LUA", enabled = state.selectedObject != null) { onCreate(ManagedLogicKind.LUA) }
            ManagedSmallButton("+ NOCODE", enabled = state.selectedObject != null) { onCreate(ManagedLogicKind.NOCODE) }
        }
        if (resources.isEmpty()) {
            Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text("Nenhum arquivo de lógica encontrado.", color = SecondaryText, fontSize = 10.sp)
                    Text("Crie Lua ou NoCode escolhendo a pasta e o nome do arquivo.", color = SecondaryText, fontSize = 8.sp)
                }
            }
        } else {
            LazyColumn(Modifier.fillMaxSize()) {
                var lastFolder = ""
                resources.forEach { resource ->
                    val folder = resource.path.substringBeforeLast('/', "res://")
                    if (folder != lastFolder) {
                        item(key = "folder:$folder") {
                            Text(
                                "▾ res://$folder",
                                modifier = Modifier.fillMaxWidth().background(Color(0xFF171522)).padding(horizontal = 9.dp, vertical = 6.dp),
                                color = AccentBright,
                                fontSize = 8.sp,
                                fontFamily = FontFamily.Monospace,
                                fontWeight = FontWeight.Bold,
                            )
                        }
                        lastFolder = folder
                    }
                    item(key = "${resource.ownerId}:${resource.path}") {
                        LogicResourceRow(resource, onOpen, onManage, onDelete)
                    }
                }
            }
        }
    }
}

@Composable
private fun LogicResourceRow(
    resource: ManagedLogicResource,
    onOpen: (ManagedLogicResource) -> Unit,
    onManage: (ManagedLogicResource) -> Unit,
    onDelete: (String, String) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(58.dp)
            .clickable { onOpen(resource) }
            .border(1.dp, WorkspaceBorder)
            .padding(horizontal = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            if (resource.kind == ManagedLogicKind.LUA) "LUA" else "NOD",
            modifier = Modifier.width(34.dp),
            color = if (resource.kind == ManagedLogicKind.LUA) Color(0xFF73B7FF) else AccentBright,
            fontSize = 9.sp,
            fontWeight = FontWeight.Bold,
            fontFamily = FontFamily.Monospace,
        )
        Column(Modifier.weight(1f)) {
            Text(resource.path.substringAfterLast('/'), color = PrimaryText, fontSize = 9.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
            Text("objeto: ${resource.ownerName}", color = SecondaryText, fontSize = 7.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
            Text("res://${resource.path}", color = SecondaryText, fontSize = 6.sp, fontFamily = FontFamily.Monospace, maxLines = 1, overflow = TextOverflow.Ellipsis)
        }
        ManagedSmallButton("ABRIR") { onOpen(resource) }
        ManagedSmallButton("MOVER") { onManage(resource) }
        TextButton(
            onClick = { onDelete(resource.ownerId, resource.path) },
            modifier = Modifier.height(34.dp),
            contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 5.dp),
            colors = ButtonDefaults.textButtonColors(contentColor = ErrorText),
        ) { Text("×", fontSize = 13.sp) }
    }
}

@Composable
private fun ProjectResourceList(
    state: WorkspaceUiState,
    query: String,
    onImportAsset: () -> Unit,
    onAddAsset: (AssetRecord) -> Unit,
) {
    Column(Modifier.fillMaxSize()) {
        Row(Modifier.fillMaxWidth().padding(7.dp), verticalAlignment = Alignment.CenterVertically) {
            Text("res://", modifier = Modifier.weight(1f), color = AccentBright, fontFamily = FontFamily.Monospace, fontSize = 9.sp)
            ManagedSmallButton("+ IMPORTAR", onClick = onImportAsset)
        }
        LazyColumn(Modifier.fillMaxSize()) {
            val folders = listOf(
                "scenes", "scripts/lua", "visual-graphs", "assets/models", "assets/textures",
                "assets/materials", "assets/animations", "assets/audio", "prefabs", "ui", "plugins",
            ).filter { query.isBlank() || it.contains(query, true) }
            items(folders, key = { "folder:$it" }) { folder ->
                Row(Modifier.fillMaxWidth().height(34.dp).padding(horizontal = 10.dp), verticalAlignment = Alignment.CenterVertically) {
                    Text("▸", modifier = Modifier.width(22.dp), color = AccentBright, fontSize = 10.sp)
                    Text(folder, color = SecondaryText, fontSize = 9.sp, fontFamily = FontFamily.Monospace)
                }
            }
            items(
                state.assets.filter { query.isBlank() || it.displayName.contains(query, true) || it.relativePath.contains(query, true) },
                key = AssetRecord::id,
            ) { asset ->
                Row(Modifier.fillMaxWidth().height(52.dp).border(1.dp, WorkspaceBorder).padding(horizontal = 9.dp), verticalAlignment = Alignment.CenterVertically) {
                    Text(if (asset.mediaType.startsWith("image/")) "IMG" else "3D", color = Positive, fontSize = 8.sp, fontWeight = FontWeight.Bold)
                    Column(Modifier.weight(1f).padding(horizontal = 8.dp)) {
                        Text(asset.displayName, color = PrimaryText, fontSize = 9.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                        Text(asset.relativePath, color = SecondaryText, fontSize = 7.sp, fontFamily = FontFamily.Monospace, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    }
                    ManagedSmallButton("USAR") { onAddAsset(asset) }
                }
            }
        }
    }
}

@Composable
private fun LogicPathEditor(
    request: LogicEditorRequest,
    selectedObjectName: String?,
    existingResources: List<ManagedLogicResource>,
    onDismiss: () -> Unit,
    onConfirm: (String, String) -> Unit,
    onDelete: (() -> Unit)?,
) {
    val root = if (request.kind == ManagedLogicKind.LUA) "scripts/lua" else "visual-graphs"
    val extension = if (request.kind == ManagedLogicKind.LUA) ".lua" else ".graph.json"
    val currentFolder = request.current?.path?.substringBeforeLast('/', root) ?: root
    val currentName = request.current?.path?.substringAfterLast('/')?.removeSuffix(extension)
        ?: selectedObjectName?.lowercase()?.replace(Regex("[^a-z0-9_-]+"), "-")?.trim('-')?.takeIf(String::isNotBlank)
        ?: if (request.kind == ManagedLogicKind.LUA) "novo-script" else "novo-fluxo"
    var folder by remember(request) { mutableStateOf(currentFolder) }
    var name by remember(request) { mutableStateOf(currentName) }
    val discovered = remember(existingResources, request.kind) {
        existingResources
            .filter { it.kind == request.kind }
            .map { it.path.substringBeforeLast('/', root) }
            .toSet()
    }
    val presets = if (request.kind == ManagedLogicKind.LUA) {
        listOf(root, "$root/gameplay", "$root/vehicles", "$root/ui", "$root/world")
    } else {
        listOf(root, "$root/gameplay", "$root/vehicles", "$root/ui", "$root/world")
    }
    val folders = (presets + discovered).distinct().sorted()
    val validFolder = folder == root || folder.startsWith("$root/")
    val validName = name.isNotBlank() && name.none { it == '/' || it == '\\' || it == ':' }

    Popup(alignment = Alignment.Center, onDismissRequest = onDismiss, properties = PopupProperties(focusable = true)) {
        Box(Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.68f)).clickable(onClick = onDismiss), contentAlignment = Alignment.Center) {
            Column(
                modifier = Modifier
                    .fillMaxWidth(0.82f)
                    .fillMaxHeight(0.78f)
                    .background(PanelBackground, RoundedCornerShape(6.dp))
                    .border(1.dp, AccentMuted, RoundedCornerShape(6.dp))
                    .padding(12.dp)
                    .clickable(enabled = false) {},
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                Text(
                    if (request.current == null) "CRIAR ${request.kind.name}" else "MOVER / RENOMEAR ${request.kind.name}",
                    color = PrimaryText,
                    fontWeight = FontWeight.Bold,
                    fontSize = 11.sp,
                )
                Text(
                    request.current?.let { "Vinculado a ${it.ownerName}" } ?: "Será vinculado ao objeto ${selectedObjectName ?: "selecionado"}",
                    color = SecondaryText,
                    fontSize = 8.sp,
                )
                Text("SELECIONE UMA PASTA", color = AccentBright, fontSize = 8.sp, fontWeight = FontWeight.Bold)
                Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                    folders.forEach { candidate ->
                        ManagedSmallButton(candidate.removePrefix("$root/").ifBlank { root }, accent = folder == candidate) {
                            folder = candidate
                        }
                    }
                }
                OutlinedTextField(
                    value = folder,
                    onValueChange = { folder = it.replace('\\', '/').take(180) },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text("Pasta dentro de res://", fontSize = 8.sp) },
                    isError = !validFolder,
                    singleLine = true,
                )
                OutlinedTextField(
                    value = name,
                    onValueChange = { name = it.take(72) },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text("Nome do arquivo", fontSize = 8.sp) },
                    suffix = { Text(extension, color = SecondaryText, fontSize = 8.sp) },
                    isError = !validName,
                    singleLine = true,
                )
                Text("Destino: res://$folder/${name.ifBlank { "…" }}$extension", color = SecondaryText, fontSize = 7.sp, fontFamily = FontFamily.Monospace)
                Spacer(Modifier.weight(1f))
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End, verticalAlignment = Alignment.CenterVertically) {
                    onDelete?.let {
                        TextButton(onClick = it, colors = ButtonDefaults.textButtonColors(contentColor = ErrorText)) {
                            Text("EXCLUIR ARQUIVO", fontSize = 8.sp)
                        }
                        Spacer(Modifier.weight(1f))
                    }
                    ManagedSmallButton("CANCELAR", onClick = onDismiss)
                    ManagedSmallButton(if (request.current == null) "CRIAR" else "APLICAR", enabled = validFolder && validName, accent = true) {
                        onConfirm(folder.trimEnd('/'), name.trim())
                    }
                }
            }
        }
    }
}

@Composable
private fun ManagedTabButton(label: String, selected: Boolean, onClick: () -> Unit) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.fillMaxHeight(),
        shape = RoundedCornerShape(0.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected) AccentMuted else Color.Transparent,
            contentColor = if (selected) AccentBright else SecondaryText,
        ),
    ) { Text(label, fontSize = 8.sp, fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal) }
}

@Composable
private fun ManagedSmallButton(
    label: String,
    enabled: Boolean = true,
    accent: Boolean = false,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier.height(34.dp),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 7.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (accent) AccentMuted else RaisedBackground,
            contentColor = if (accent) AccentBright else PrimaryText,
        ),
    ) { Text(label, fontSize = 7.sp, maxLines = 1) }
}
