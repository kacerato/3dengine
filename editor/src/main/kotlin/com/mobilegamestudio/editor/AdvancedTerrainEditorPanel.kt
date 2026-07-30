package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
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
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.TerrainComponent
import com.mobilegamestudio.core.model.TerrainProcessMode
import com.mobilegamestudio.core.model.authoringMaskAt
import kotlin.math.abs
import kotlin.math.atan
import kotlin.math.sqrt

private enum class WorldAuthoringTab { SCULPT, GENERATE, MATERIALS, IMPORT, ANALYZE }

@Composable
internal fun AdvancedTerrainEditorPanel(
    terrain: TerrainComponent?,
    tool: TerrainToolState,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onBrush: (Float, Float) -> Unit,
    onAutoTile: () -> Unit,
    onProcess: (TerrainProcessMode, Float, Int, Float) -> Unit,
    onImportHeightmap: () -> Unit,
    onCreateTerrain: () -> Unit,
    modifier: Modifier = Modifier,
) {
    if (terrain == null) {
        Column(
            modifier.fillMaxSize().background(PanelBackground).padding(18.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            Text("WORLD FORGE", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 14.sp)
            Text(
                "Selecione um terreno existente ou crie um novo. O painel permanece lateral para você acompanhar cada alteração diretamente no viewport 3D.",
                color = SecondaryText,
                fontSize = 9.sp,
            )
            TerrainActionButton("+ CRIAR TERRENO EDITÁVEL", accent = true, onClick = onCreateTerrain)
        }
        return
    }

    var tabName by rememberSaveable { mutableStateOf(WorldAuthoringTab.SCULPT.name) }
    val tab = WorldAuthoringTab.valueOf(tabName)
    Column(modifier.fillMaxSize().background(PanelBackground)) {
        WorldSummaryBar(terrain)
        Row(
            Modifier.fillMaxWidth().height(36.dp).horizontalScroll(rememberScrollState()).background(RaisedBackground),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            WorldAuthoringTab.entries.forEach { item ->
                WorldTabButton(item, tab == item) { tabName = item.name }
            }
        }
        when (tab) {
            WorldAuthoringTab.SCULPT -> SculptTerrainTab(terrain, tool, onToolChange, onBrush)
            WorldAuthoringTab.GENERATE -> GenerateTerrainTab(onProcess)
            WorldAuthoringTab.MATERIALS -> MaterialsTerrainTab(terrain, tool, onToolChange, onAutoTile)
            WorldAuthoringTab.IMPORT -> ImportTerrainTab(terrain, onImportHeightmap)
            WorldAuthoringTab.ANALYZE -> AnalyzeTerrainTab(terrain)
        }
    }
}

@Composable
private fun WorldSummaryBar(terrain: TerrainComponent) {
    Column(Modifier.fillMaxWidth().background(Color(0xFF0D0C15)).padding(horizontal = 10.dp, vertical = 7.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text("WORLD FORGE", modifier = Modifier.weight(1f), color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 11.sp)
            Text("LIVE 3D", color = Positive, fontSize = 7.sp, fontWeight = FontWeight.Bold)
        }
        Text(
            "${terrain.resolution}² vértices · ${terrain.width.toInt()} m · altura ${terrain.maxHeight.toInt()} m · ${terrain.materialLayers.size} materiais",
            color = SecondaryText,
            fontSize = 7.sp,
            fontFamily = FontFamily.Monospace,
        )
    }
}

@Composable
private fun SculptTerrainTab(
    terrain: TerrainComponent,
    tool: TerrainToolState,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onBrush: (Float, Float) -> Unit,
) {
    Column(Modifier.fillMaxSize()) {
        Column(
            Modifier.fillMaxWidth().verticalScroll(rememberScrollState()).padding(horizontal = 8.dp, vertical = 6.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            ToolSection("FORMA BÁSICA", listOf(
                TerrainBrushMode.RAISE,
                TerrainBrushMode.LOWER,
                TerrainBrushMode.SMOOTH,
                TerrainBrushMode.FLATTEN,
                TerrainBrushMode.NOISE,
            ), tool.mode, onToolChange)
            ToolSection("ESCULTURA AVANÇADA", listOf(
                TerrainBrushMode.STAMP,
                TerrainBrushMode.TERRACE,
                TerrainBrushMode.RIDGE,
                TerrainBrushMode.CANYON,
                TerrainBrushMode.ERODE,
            ), tool.mode, onToolChange)
            ToolSection("MÁSCARA DE EFEITO", listOf(
                TerrainBrushMode.MASK_PAINT,
                TerrainBrushMode.MASK_ERASE,
            ), tool.mode, onToolChange)
            TerrainControlSlider("RAIO DO PINCEL", tool.radius, 0.01f..0.5f) {
                onToolChange(null, it, null, null, null)
            }
            TerrainControlSlider("FORÇA", tool.strength, 0.01f..1f) {
                onToolChange(null, null, it, null, null)
            }
            if (tool.mode in setOf(TerrainBrushMode.FLATTEN, TerrainBrushMode.STAMP)) {
                TerrainControlSlider("ALTURA ALVO", tool.targetHeight, 0f..1f) {
                    onToolChange(null, null, null, it, null)
                }
            }
        }
        TerrainAuthoringMap(
            terrain = terrain,
            showMask = tool.mode == TerrainBrushMode.MASK_PAINT || tool.mode == TerrainBrushMode.MASK_ERASE,
            onBrush = onBrush,
            modifier = Modifier.weight(1f).fillMaxWidth().padding(8.dp),
        )
        Text(
            "Pincel aplicado no heightfield e refletido ao vivo no viewport 3D. Use máscara para proteger estradas, cidades ou formações antes de erosão e geração.",
            modifier = Modifier.fillMaxWidth().padding(horizontal = 9.dp, vertical = 6.dp),
            color = SecondaryText,
            fontSize = 7.sp,
        )
    }
}

@Composable
private fun ToolSection(
    title: String,
    modes: List<TerrainBrushMode>,
    selected: TerrainBrushMode,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
) {
    Text(title, color = AccentBright, fontSize = 7.sp, fontWeight = FontWeight.Bold, letterSpacing = 0.5.sp)
    Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
        modes.forEach { mode ->
            TerrainActionButton(mode.authoringLabel(), selected = mode == selected) {
                onToolChange(mode, null, null, null, null)
            }
        }
    }
}

@Composable
private fun GenerateTerrainTab(onProcess: (TerrainProcessMode, Float, Int, Float) -> Unit) {
    var strength by rememberSaveable { mutableFloatStateOf(0.55f) }
    var iterations by rememberSaveable { mutableIntStateOf(18) }
    var scale by rememberSaveable { mutableFloatStateOf(0.48f) }
    Column(
        Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text("GERAÇÃO E SIMULAÇÃO", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 10.sp)
        Text(
            "As operações são determinísticas e respeitam a máscara pintada. Combine processos em sequência para criar biomas e formações únicas.",
            color = SecondaryText,
            fontSize = 8.sp,
        )
        TerrainControlSlider("INTENSIDADE", strength, 0.01f..1f) { strength = it }
        TerrainControlSlider("ESCALA DA FORMA", scale, 0.01f..1f) { scale = it }
        TerrainControlSlider("ITERAÇÕES $iterations", iterations / 96f, 0.01f..1f) {
            iterations = (1 + it * 95).toInt().coerceIn(1, 96)
        }
        ProcessGroup("GERADORES", listOf(
            TerrainProcessMode.CONTINENT,
            TerrainProcessMode.MOUNTAIN_RANGES,
            TerrainProcessMode.GEOLOGICAL_STRATA,
        ), strength, iterations, scale, onProcess)
        ProcessGroup("PROCESSOS NATURAIS", listOf(
            TerrainProcessMode.HYDRAULIC_EROSION,
            TerrainProcessMode.THERMAL_EROSION,
            TerrainProcessMode.RIVER_NETWORK,
        ), strength, iterations, scale, onProcess)
        ProcessGroup("ACABAMENTO", listOf(
            TerrainProcessMode.TERRACE,
            TerrainProcessMode.SMOOTH,
            TerrainProcessMode.NORMALIZE,
            TerrainProcessMode.INVERT,
        ), strength, iterations, scale, onProcess)
        Text(
            "Fluxo sugerido: Continente → Cordilheiras → Terraços → Erosão hidráulica → Rede de rios → Auto-tile.",
            color = Positive,
            fontSize = 7.sp,
        )
    }
}

@Composable
private fun ProcessGroup(
    title: String,
    processes: List<TerrainProcessMode>,
    strength: Float,
    iterations: Int,
    scale: Float,
    onProcess: (TerrainProcessMode, Float, Int, Float) -> Unit,
) {
    Text(title, color = AccentBright, fontSize = 7.sp, fontWeight = FontWeight.Bold)
    processes.forEach { process ->
        Row(
            Modifier.fillMaxWidth().background(RaisedBackground, RoundedCornerShape(4.dp)).border(1.dp, WorkspaceBorder, RoundedCornerShape(4.dp)).padding(7.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(Modifier.weight(1f)) {
                Text(process.processLabel(), color = PrimaryText, fontSize = 9.sp, fontWeight = FontWeight.SemiBold)
                Text(process.processDescription(), color = SecondaryText, fontSize = 7.sp)
            }
            TerrainActionButton("APLICAR", accent = true) { onProcess(process, strength, iterations, scale) }
        }
    }
}

@Composable
private fun MaterialsTerrainTab(
    terrain: TerrainComponent,
    tool: TerrainToolState,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onAutoTile: () -> Unit,
) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(9.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        Text("MATERIAIS E DISTRIBUIÇÃO", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 10.sp)
        TerrainActionButton("RECALCULAR AUTO-TILE POR ALTURA E INCLINAÇÃO", accent = true, onClick = onAutoTile)
        terrain.materialLayers.forEach { layer ->
            val selected = tool.materialLayerId == layer.id
            Row(
                Modifier
                    .fillMaxWidth()
                    .background(Color(layer.colorArgb).copy(alpha = if (selected) 0.36f else 0.18f), RoundedCornerShape(4.dp))
                    .border(if (selected) 2.dp else 1.dp, if (selected) AccentBright else WorkspaceBorder, RoundedCornerShape(4.dp))
                    .padding(8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Box(Modifier.width(26.dp).height(26.dp).background(Color(layer.colorArgb), RoundedCornerShape(3.dp)))
                Column(Modifier.weight(1f).padding(horizontal = 8.dp)) {
                    Text(layer.name, color = PrimaryText, fontSize = 9.sp, fontWeight = FontWeight.SemiBold)
                    Text("escala ${"%.1f".format(layer.textureScale)} · roughness ${"%.2f".format(layer.roughness)}", color = SecondaryText, fontSize = 7.sp)
                }
                TerrainActionButton(if (selected) "PINTANDO" else "PINTAR", selected = selected) {
                    onToolChange(TerrainBrushMode.PAINT, null, null, null, layer.id)
                }
            }
        }
        Text(
            "Texturas importadas podem ser aplicadas ao terreno pela biblioteca de assets. O auto-tile usa regras de altura e inclinação para distribuir as camadas.",
            color = SecondaryText,
            fontSize = 7.sp,
        )
    }
}

@Composable
private fun ImportTerrainTab(terrain: TerrainComponent, onImportHeightmap: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(10.dp), verticalArrangement = Arrangement.spacedBy(9.dp)) {
        Text("IMPORTAÇÃO DE TERRENO", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 10.sp)
        TerrainActionButton("IMPORTAR HEIGHTMAP PNG / JPG / RAW16", accent = true, onClick = onImportHeightmap)
        ImportInfo("PNG / JPG", "Luminância convertida para altura. A imagem é reamostrada para uma grade segura e aplicada ao terreno selecionado.")
        ImportInfo("RAW16 / R16", "Dados little-endian de 16 bits preservam gradientes mais suaves e evitam degraus visíveis em grandes terrenos.")
        ImportInfo("RESULTADO", "A importação substitui apenas o relevo, mantém materiais e recalcula o auto-tile. Use Desfazer para voltar.")
        Text(
            "Terreno atual: ${terrain.resolution} × ${terrain.resolution}. O editor aceita até 257 × 257 amostras nesta versão.",
            color = Positive,
            fontSize = 8.sp,
        )
    }
}

@Composable
private fun ImportInfo(title: String, body: String) {
    Column(Modifier.fillMaxWidth().background(RaisedBackground, RoundedCornerShape(4.dp)).border(1.dp, WorkspaceBorder, RoundedCornerShape(4.dp)).padding(9.dp)) {
        Text(title, color = AccentBright, fontWeight = FontWeight.Bold, fontSize = 8.sp)
        Text(body, color = SecondaryText, fontSize = 7.sp)
    }
}

@Composable
private fun AnalyzeTerrainTab(terrain: TerrainComponent) {
    val stats = remember(terrain.heights) { calculateTerrainStats(terrain) }
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(10.dp), verticalArrangement = Arrangement.spacedBy(7.dp)) {
        Text("ANÁLISE DO TERRENO", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 10.sp)
        StatCard("ALTURA MÍNIMA", "${"%.2f".format(stats.minHeight * terrain.maxHeight)} m")
        StatCard("ALTURA MÁXIMA", "${"%.2f".format(stats.maxHeight * terrain.maxHeight)} m")
        StatCard("ALTURA MÉDIA", "${"%.2f".format(stats.averageHeight * terrain.maxHeight)} m")
        StatCard("INCLINAÇÃO MÉDIA", "${"%.1f".format(stats.averageSlope)}°")
        StatCard("RUGOSIDADE", "${"%.1f".format(stats.roughness * 100f)}%")
        StatCard("ÁREA PROTEGIDA POR MÁSCARA", "${"%.1f".format(stats.maskedArea * 100f)}%")
        Text(
            "Essas métricas ajudam a decidir onde posicionar estradas, rios, cidades, vegetação e colisores.",
            color = SecondaryText,
            fontSize = 7.sp,
        )
    }
}

@Composable
private fun StatCard(label: String, value: String) {
    Row(Modifier.fillMaxWidth().background(RaisedBackground, RoundedCornerShape(4.dp)).border(1.dp, WorkspaceBorder, RoundedCornerShape(4.dp)).padding(9.dp)) {
        Text(label, modifier = Modifier.weight(1f), color = SecondaryText, fontSize = 7.sp)
        Text(value, color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 9.sp)
    }
}

@Composable
private fun TerrainAuthoringMap(
    terrain: TerrainComponent,
    showMask: Boolean,
    onBrush: (Float, Float) -> Unit,
    modifier: Modifier,
) {
    Canvas(
        modifier = modifier
            .background(Color(0xFF0B0C10), RoundedCornerShape(4.dp))
            .border(1.dp, WorkspaceBorder, RoundedCornerShape(4.dp))
            .pointerInput(terrain.componentId) {
                detectTapGestures { offset -> onBrush(offset.x / size.width, offset.y / size.height) }
            }
            .pointerInput(terrain.componentId) {
                detectDragGestures { change, _ ->
                    change.consume()
                    onBrush(change.position.x / size.width, change.position.y / size.height)
                }
            },
    ) {
        val cellWidth = size.width / terrain.resolution
        val cellHeight = size.height / terrain.resolution
        for (z in 0 until terrain.resolution) for (x in 0 until terrain.resolution) {
            val height = terrain.heightAt(x, z)
            val layer = terrain.dominantLayerAt(x, z)
            val base = Color(layer.colorArgb)
            val shade = 0.45f + height * 0.65f
            drawRect(
                color = base.copy(
                    red = (base.red * shade).coerceIn(0f, 1f),
                    green = (base.green * shade).coerceIn(0f, 1f),
                    blue = (base.blue * shade).coerceIn(0f, 1f),
                ),
                topLeft = Offset(x * cellWidth, z * cellHeight),
                size = Size(cellWidth + 0.5f, cellHeight + 0.5f),
            )
            if (showMask) {
                val mask = terrain.authoringMaskAt(x, z)
                if (mask < 0.995f) {
                    drawRect(
                        color = Color(0xAAE34763).copy(alpha = (1f - mask) * 0.82f),
                        topLeft = Offset(x * cellWidth, z * cellHeight),
                        size = Size(cellWidth + 0.5f, cellHeight + 0.5f),
                    )
                }
            }
        }
        val contourCount = 10
        repeat(contourCount) { contour ->
            val level = (contour + 1f) / (contourCount + 1f)
            val path = Path()
            var started = false
            for (z in 0 until terrain.resolution) {
                for (x in 1 until terrain.resolution) {
                    val a = terrain.heightAt(x - 1, z)
                    val b = terrain.heightAt(x, z)
                    if ((a - level) * (b - level) <= 0f && abs(a - b) > 0.0001f) {
                        val px = (x - 0.5f) * cellWidth
                        val py = z * cellHeight
                        if (!started) {
                            path.moveTo(px, py)
                            started = true
                        } else path.lineTo(px, py)
                    }
                }
            }
            if (started) drawPath(path, Color.White.copy(alpha = 0.1f), style = Stroke(0.7f))
        }
    }
}

@Composable
private fun TerrainControlSlider(
    label: String,
    value: Float,
    range: ClosedFloatingPointRange<Float>,
    onChange: (Float) -> Unit,
) {
    Column(Modifier.fillMaxWidth()) {
        Text("$label  ${"%.2f".format(value)}", color = SecondaryText, fontSize = 7.sp)
        Slider(value = value, onValueChange = onChange, valueRange = range)
    }
}

@Composable
private fun TerrainActionButton(
    label: String,
    selected: Boolean = false,
    accent: Boolean = false,
    onClick: () -> Unit,
) {
    TextButton(
        onClick = onClick,
        modifier = Modifier.height(34.dp),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 8.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected || accent) AccentMuted else RaisedBackground,
            contentColor = if (selected || accent) AccentBright else SecondaryText,
        ),
    ) { Text(label, fontSize = 7.sp, fontWeight = if (selected || accent) FontWeight.Bold else FontWeight.Normal, maxLines = 1) }
}

@Composable
private fun WorldTabButton(tab: WorldAuthoringTab, selected: Boolean, onClick: () -> Unit) {
    TerrainActionButton(
        label = when (tab) {
            WorldAuthoringTab.SCULPT -> "ESCULPIR"
            WorldAuthoringTab.GENERATE -> "GERAR"
            WorldAuthoringTab.MATERIALS -> "MATERIAIS"
            WorldAuthoringTab.IMPORT -> "IMPORTAR"
            WorldAuthoringTab.ANALYZE -> "ANALISAR"
        },
        selected = selected,
        onClick = onClick,
    )
}

private data class TerrainStats(
    val minHeight: Float,
    val maxHeight: Float,
    val averageHeight: Float,
    val averageSlope: Float,
    val roughness: Float,
    val maskedArea: Float,
)

private fun calculateTerrainStats(terrain: TerrainComponent): TerrainStats {
    val minHeight = terrain.heights.minOrNull() ?: 0f
    val maxHeight = terrain.heights.maxOrNull() ?: 0f
    val average = if (terrain.heights.isEmpty()) 0f else terrain.heights.average().toFloat()
    var slopeSum = 0f
    var roughnessSum = 0f
    var count = 0
    var protected = 0
    val cellSize = terrain.width / (terrain.resolution - 1)
    for (z in 0 until terrain.resolution) for (x in 0 until terrain.resolution) {
        val dx = (terrain.heightAt(x + 1, z) - terrain.heightAt(x - 1, z)) * terrain.maxHeight
        val dz = (terrain.heightAt(x, z + 1) - terrain.heightAt(x, z - 1)) * terrain.maxHeight
        slopeSum += Math.toDegrees(atan(sqrt(dx * dx + dz * dz) / (2f * cellSize)).toDouble()).toFloat()
        roughnessSum += abs(terrain.heightAt(x, z) - average)
        if (terrain.authoringMaskAt(x, z) < 0.5f) protected++
        count++
    }
    return TerrainStats(
        minHeight = minHeight,
        maxHeight = maxHeight,
        averageHeight = average,
        averageSlope = slopeSum / count.coerceAtLeast(1),
        roughness = (roughnessSum / count.coerceAtLeast(1)).coerceIn(0f, 1f),
        maskedArea = protected.toFloat() / count.coerceAtLeast(1),
    )
}

private fun TerrainBrushMode.authoringLabel(): String = when (this) {
    TerrainBrushMode.RAISE -> "ELEVAR"
    TerrainBrushMode.LOWER -> "ESCAVAR"
    TerrainBrushMode.SMOOTH -> "SUAVIZAR"
    TerrainBrushMode.FLATTEN -> "NIVELAR"
    TerrainBrushMode.NOISE -> "RUÍDO"
    TerrainBrushMode.PAINT -> "PINTAR"
    TerrainBrushMode.STAMP -> "CARIMBO"
    TerrainBrushMode.TERRACE -> "TERRAÇOS"
    TerrainBrushMode.RIDGE -> "CRISTA"
    TerrainBrushMode.CANYON -> "CÂNION"
    TerrainBrushMode.ERODE -> "ERODIR"
    TerrainBrushMode.MASK_PAINT -> "PROTEGER"
    TerrainBrushMode.MASK_ERASE -> "LIBERAR"
}

private fun TerrainProcessMode.processLabel(): String = when (this) {
    TerrainProcessMode.CONTINENT -> "Gerador continental"
    TerrainProcessMode.MOUNTAIN_RANGES -> "Cordilheiras com domain warp"
    TerrainProcessMode.HYDRAULIC_EROSION -> "Erosão hidráulica"
    TerrainProcessMode.THERMAL_EROSION -> "Erosão térmica / deslizamento"
    TerrainProcessMode.RIVER_NETWORK -> "Rede de rios por acumulação de fluxo"
    TerrainProcessMode.TERRACE -> "Terraços e mesas"
    TerrainProcessMode.GEOLOGICAL_STRATA -> "Estratos geológicos"
    TerrainProcessMode.NORMALIZE -> "Normalizar amplitude"
    TerrainProcessMode.SMOOTH -> "Suavização multipasso"
    TerrainProcessMode.INVERT -> "Inverter relevo"
}

private fun TerrainProcessMode.processDescription(): String = when (this) {
    TerrainProcessMode.CONTINENT -> "Massa terrestre com bordas oceânicas, macroformas e detalhe fractal."
    TerrainProcessMode.MOUNTAIN_RANGES -> "Cristas deformadas organicamente, sem repetir um padrão simples."
    TerrainProcessMode.HYDRAULIC_EROSION -> "Transporta solo das encostas e deposita sedimento nas baixadas."
    TerrainProcessMode.THERMAL_EROSION -> "Move material acima do ângulo de repouso e estabiliza taludes."
    TerrainProcessMode.RIVER_NETWORK -> "Calcula drenagem, acumula fluxo e escava canais conectados."
    TerrainProcessMode.TERRACE -> "Quantiza faixas de altura para mesas, agricultura ou paredões."
    TerrainProcessMode.GEOLOGICAL_STRATA -> "Cria bandas de rocha distorcidas pela forma atual do relevo."
    TerrainProcessMode.NORMALIZE -> "Expande o intervalo de altura para utilizar toda a amplitude disponível."
    TerrainProcessMode.SMOOTH -> "Remove ruído sem apagar completamente as grandes formações."
    TerrainProcessMode.INVERT -> "Transforma vales em picos e picos em depressões."
}
