package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.AssetRecord
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeType
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

@Composable
internal fun QuickAssetsPanel(
    assets: List<AssetRecord>,
    isImporting: Boolean,
    onAddAsset: (AssetRecord) -> Unit,
    onImportAsset: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .height(106.dp)
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder),
    ) {
        WorkspacePanelHeader("ASSETS DO PROJETO", "${assets.size} importados")
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Button(
                onClick = onImportAsset,
                enabled = !isImporting,
                modifier = Modifier.padding(horizontal = 8.dp),
                colors = ButtonDefaults.buttonColors(containerColor = Accent, contentColor = Color(0xFF241B0C)),
            ) {
                Text(if (isImporting) "Importando…" else "Importar GLB / PBR")
            }
            if (assets.isEmpty()) {
                Text("Nenhum modelo importado", color = SecondaryText, fontSize = 10.sp)
            } else {
                LazyRow(
                    contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 4.dp, vertical = 6.dp),
                    horizontalArrangement = Arrangement.spacedBy(7.dp),
                ) {
                    items(assets, key = { it.id }) { asset ->
                        AssetTile(asset = asset, onClick = { onAddAsset(asset) })
                    }
                }
            }
        }
    }
}

@Composable
internal fun AssetLibrary(
    assets: List<AssetRecord>,
    isImporting: Boolean,
    onAddAsset: (AssetRecord) -> Unit,
    onImportAsset: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
    ) {
        Text("Biblioteca interna", color = PrimaryText, fontSize = 20.sp, fontWeight = FontWeight.SemiBold)
        Text(
            "Modelos validados e armazenados dentro do projeto.",
            color = SecondaryText,
            fontSize = 12.sp,
        )
        Spacer(Modifier.height(16.dp))
        Button(
            onClick = onImportAsset,
            enabled = !isImporting,
            colors = ButtonDefaults.buttonColors(containerColor = Accent, contentColor = Color(0xFF241B0C)),
        ) {
            Text(if (isImporting) "Importando…" else "Importar modelo GLB")
        }
        Spacer(Modifier.height(12.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
            items(assets, key = { it.id }) { asset ->
                AssetTile(asset = asset, onClick = { onAddAsset(asset) }, large = true)
            }
        }
    }
}

@Composable
private fun AssetTile(
    asset: AssetRecord,
    onClick: () -> Unit,
    large: Boolean = false,
) {
    Surface(
        onClick = onClick,
        modifier = Modifier
            .width(if (large) 164.dp else 128.dp)
            .height(if (large) 118.dp else 58.dp),
        color = RaisedBackground,
        shape = RoundedCornerShape(5.dp),
        border = androidx.compose.foundation.BorderStroke(1.dp, WorkspaceBorder),
    ) {
        if (large) {
            Column(Modifier.padding(12.dp), verticalArrangement = Arrangement.SpaceBetween) {
                Text("◆", color = Accent, fontSize = 22.sp)
                Column {
                    Text(asset.displayName, color = PrimaryText, fontSize = 13.sp, fontWeight = FontWeight.Medium)
                    Text(
                        "${asset.sizeBytes / 1024} KiB · " +
                            when {
                                asset.mediaType.startsWith("image/") -> "textura PBR"
                                asset.animationClips.isNotEmpty() -> "${asset.animationClips.size} animações"
                                else -> "${asset.materialSlots.size} materiais"
                            },
                        color = SecondaryText,
                        fontSize = 10.sp,
                    )
                }
            }
        } else {
            Row(
                Modifier.padding(horizontal = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text("◆", color = Accent, fontSize = 15.sp)
                Spacer(Modifier.width(8.dp))
                Column {
                    Text(asset.displayName, color = PrimaryText, fontSize = 11.sp, maxLines = 1)
                    Text("+ adicionar", color = SecondaryText, fontSize = 9.sp)
                }
            }
        }
    }
}

@Composable
internal fun LogicWorkspace(
    state: WorkspaceUiState,
    onCreateTouchGraph: () -> Unit,
    onAddNode: (VisualNodeType) -> Unit,
    onRemoveLastNode: () -> Unit,
    onSaveGraph: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        WorkspacePanel("LÓGICA", "API compartilhada", Modifier.width(240.dp).fillMaxHeight()) {
            Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                StatusRow("API de componentes", true)
                StatusRow("Runtime Lua sandbox", state.hasLuaScript)
                StatusRow("Grafo visual", state.hasVisualGraph)
                StatusRow("Sessão Play", state.isPreviewRunning)
                Spacer(Modifier.height(4.dp))
                Text(
                    "OBJETO ALVO",
                    color = SecondaryText,
                    fontSize = 9.sp,
                    letterSpacing = 0.7.sp,
                )
                Text(
                    state.selectedObject?.name ?: "Nenhum objeto selecionado",
                    color = PrimaryText,
                    fontSize = 12.sp,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
                Button(
                    onClick = onCreateTouchGraph,
                    enabled = !state.isLoadingGraph && !state.isSavingGraph,
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Accent,
                        contentColor = Color(0xFF241B0C),
                    ),
                ) {
                    Text(if (state.visualGraph == null) "Criar fluxo de toque" else "Reiniciar fluxo", fontSize = 10.sp)
                }
                Button(
                    onClick = onSaveGraph,
                    enabled = state.visualGraph != null && !state.isSavingGraph,
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = RaisedBackground,
                        contentColor = Accent,
                    ),
                ) {
                    Text(if (state.isSavingGraph) "Salvando…" else "Salvar grafo", fontSize = 10.sp)
                }
            }
        }
        Column(
            modifier = Modifier
                .weight(1f)
                .fillMaxHeight()
                .background(PanelBackground)
                .border(1.dp, WorkspaceBorder)
                .padding(16.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Column {
                    Text("Grafo de gameplay", color = PrimaryText, fontSize = 18.sp, fontWeight = FontWeight.SemiBold)
                    Text("Fluxo executável, persistido em visual-graphs/", color = SecondaryText, fontSize = 10.sp)
                }
                Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    GraphActionButton("Rotacionar", enabled = !state.isLoadingGraph && !state.isSavingGraph) {
                        onAddNode(VisualNodeType.ROTATE_OBJECT)
                    }
                    GraphActionButton("Escala", enabled = !state.isLoadingGraph && !state.isSavingGraph) {
                        onAddNode(VisualNodeType.SET_SCALE)
                    }
                    GraphActionButton("Log", enabled = !state.isLoadingGraph && !state.isSavingGraph) {
                        onAddNode(VisualNodeType.PRINT_LOG)
                    }
                    GraphActionButton(
                        "Desfazer nó",
                        enabled = !state.isLoadingGraph &&
                            !state.isSavingGraph &&
                            (state.visualGraph?.nodes?.size ?: 0) > 1,
                    ) {
                        onRemoveLastNode()
                    }
                }
            }
            Spacer(Modifier.height(18.dp))
            if (state.visualGraph == null) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .border(1.dp, WorkspaceBorder, RoundedCornerShape(5.dp))
                        .padding(24.dp),
                    verticalArrangement = Arrangement.Center,
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Text("Crie um fluxo de toque para o objeto selecionado.", color = PrimaryText, fontSize = 14.sp)
                    Spacer(Modifier.height(6.dp))
                    Text(
                        "Depois encadeie rotação, escala e logs. O mesmo host usado por Lua executa estes nós em Visualizar.",
                        color = SecondaryText,
                        fontSize = 11.sp,
                    )
                }
                return@Column
            }
            Text(
                state.visualGraph.name,
                color = SecondaryText,
                fontSize = 11.sp,
            )
            Spacer(Modifier.height(10.dp))
            LazyRow(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .background(Color(0xFF15171B))
                    .border(1.dp, WorkspaceBorder, RoundedCornerShape(5.dp))
                    .padding(18.dp),
                horizontalArrangement = Arrangement.spacedBy(10.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                items(state.visualGraph.nodes, key = VisualNode::id) { node ->
                    GraphNodeCard(node)
                    if (node != state.visualGraph.nodes.last()) {
                        Text("→", color = Accent, fontSize = 18.sp)
                    }
                }
            }
        }
    }
}

@Composable
private fun GraphActionButton(
    label: String,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    Button(
        onClick = onClick,
        enabled = enabled,
        colors = ButtonDefaults.buttonColors(
            containerColor = RaisedBackground,
            contentColor = PrimaryText,
        ),
    ) {
        Text("+ $label", fontSize = 9.sp)
    }
}

@Composable
private fun GraphNodeCard(node: VisualNode) {
    val headerColor = when (node.type) {
        VisualNodeType.ON_START,
        VisualNodeType.ON_TOUCH,
        VisualNodeType.ON_BUTTON_PRESSED,
        -> Color(0xFF527F67)
        VisualNodeType.ROTATE_OBJECT,
        VisualNodeType.SET_SCALE,
        -> Color(0xFF4C6689)
        VisualNodeType.PRINT_LOG -> Color(0xFF765E84)
        VisualNodeType.SEQUENCE -> Color(0xFF6B6253)
        VisualNodeType.CATALOG -> Color(0xFF69418F)
    }
    Column(
        modifier = Modifier
            .width(176.dp)
            .background(RaisedBackground, RoundedCornerShape(5.dp))
            .border(1.dp, WorkspaceBorder, RoundedCornerShape(5.dp)),
    ) {
        Text(
            node.type.graphLabel(),
            modifier = Modifier
                .fillMaxWidth()
                .background(headerColor, RoundedCornerShape(topStart = 5.dp, topEnd = 5.dp))
                .padding(horizontal = 10.dp, vertical = 7.dp),
            color = Color.White,
            fontSize = 11.sp,
            fontWeight = FontWeight.SemiBold,
        )
        Column(Modifier.padding(10.dp), verticalArrangement = Arrangement.spacedBy(4.dp)) {
            node.objectName?.let { GraphNodeValue("Objeto", it) }
            node.numberValue?.let { GraphNodeValue("Valor", it.toString()) }
            node.textValue?.let { GraphNodeValue("Texto", it) }
            if (node.objectName == null && node.numberValue == null && node.textValue == null) {
                GraphNodeValue("Saída", "execução")
            }
        }
    }
}

@Composable
private fun GraphNodeValue(label: String, value: String) {
    Text(label.uppercase(), color = SecondaryText, fontSize = 8.sp, letterSpacing = 0.5.sp)
    Text(value, color = PrimaryText, fontSize = 10.sp, maxLines = 2, overflow = TextOverflow.Ellipsis)
}

private fun VisualNodeType.graphLabel(): String = when (this) {
    VisualNodeType.ON_START -> "Ao iniciar"
    VisualNodeType.ON_TOUCH -> "Ao tocar no objeto"
    VisualNodeType.ON_BUTTON_PRESSED -> "Ao pressionar botão"
    VisualNodeType.ROTATE_OBJECT -> "Rotacionar objeto"
    VisualNodeType.SET_SCALE -> "Alterar escala"
    VisualNodeType.PRINT_LOG -> "Exibir log"
    VisualNodeType.SEQUENCE -> "Sequência"
    VisualNodeType.CATALOG -> "Nó de catálogo"
}

@Composable
private fun StatusRow(label: String, ready: Boolean) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Text(if (ready) "●" else "○", color = if (ready) Positive else SecondaryText, fontSize = 10.sp)
        Spacer(Modifier.width(8.dp))
        Text(label, color = PrimaryText, fontSize = 12.sp)
    }
}

@Composable
internal fun ProjectSettings(
    state: WorkspaceUiState,
    onNameChange: (String) -> Unit,
    onSave: () -> Unit,
) {
    val metadata = requireNotNull(state.metadata)
    Row(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalArrangement = Arrangement.spacedBy(14.dp),
    ) {
        Column(
            modifier = Modifier
                .weight(1f)
                .fillMaxHeight()
                .background(PanelBackground)
                .border(1.dp, WorkspaceBorder)
                .padding(18.dp),
        ) {
            Text("Configuração do projeto", color = PrimaryText, fontSize = 20.sp, fontWeight = FontWeight.SemiBold)
            Text("O nome é persistido em project.json e no catálogo local.", color = SecondaryText, fontSize = 12.sp)
            Spacer(Modifier.height(16.dp))
            OutlinedTextField(
                value = state.editableName,
                onValueChange = onNameChange,
                label = { Text("Nome do projeto") },
                isError = state.nameError != null,
                supportingText = { state.nameError?.let { Text(it) } },
                singleLine = true,
                enabled = !state.isSaving,
                modifier = Modifier.fillMaxWidth(),
            )
            Spacer(Modifier.height(12.dp))
            Button(
                onClick = onSave,
                enabled = !state.isSaving && state.editableName.trim() != metadata.name,
                colors = ButtonDefaults.buttonColors(containerColor = Accent, contentColor = Color(0xFF241B0C)),
            ) {
                if (state.isSaving) {
                    CircularProgressIndicator(Modifier.width(16.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(8.dp))
                }
                Text(if (state.isSaving) "Salvando…" else "Salvar metadados")
            }
        }
        WorkspacePanel("METADADOS", "persistidos", Modifier.weight(1f).fillMaxHeight()) {
            Column(Modifier.padding(14.dp), verticalArrangement = Arrangement.spacedBy(11.dp)) {
                MetadataRow("ID", metadata.id.value, monospace = true)
                MetadataRow("Formato", "${metadata.format} · schema ${metadata.schemaVersion}")
                MetadataRow("Engine", metadata.engineVersion)
                MetadataRow("Revisão", metadata.revision.toString())
                MetadataRow("Criado", formatWorkspaceTimestamp(metadata.createdAtEpochMillis))
                MetadataRow("Atualizado", formatWorkspaceTimestamp(metadata.updatedAtEpochMillis))
            }
        }
    }
}

@Composable
private fun MetadataRow(label: String, value: String, monospace: Boolean = false) {
    Column {
        Text(label.uppercase(), color = SecondaryText, fontSize = 9.sp, letterSpacing = 0.6.sp)
        Text(
            value,
            color = PrimaryText,
            fontSize = 12.sp,
            fontFamily = if (monospace) FontFamily.Monospace else FontFamily.Default,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

private val workspaceTimestampFormatter: DateTimeFormatter =
    DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")

private fun formatWorkspaceTimestamp(epochMillis: Long): String =
    Instant.ofEpochMilli(epochMillis)
        .atZone(ZoneId.systemDefault())
        .format(workspaceTimestampFormatter)
