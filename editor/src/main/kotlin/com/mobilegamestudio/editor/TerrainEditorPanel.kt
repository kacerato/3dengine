package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.TerrainBrushMode
import com.mobilegamestudio.core.model.TerrainComponent

@Composable
internal fun TerrainEditorPanel(
    terrain: TerrainComponent?,
    tool: TerrainToolState,
    onToolChange: (TerrainBrushMode?, Float?, Float?, Float?, String?) -> Unit,
    onBrush: (Float, Float) -> Unit,
    onAutoTile: () -> Unit,
    modifier: Modifier = Modifier,
) {
    if (terrain == null) {
        Column(
            modifier.fillMaxSize().padding(18.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Text("EDITOR DE MUNDO", color = PrimaryText, fontWeight = FontWeight.Bold)
            Text(
                "Crie ou selecione um objeto Terreno para esculpir e pintar.",
                color = SecondaryText,
                fontSize = 11.sp,
            )
        }
        return
    }
    Column(
        modifier = modifier
            .fillMaxSize()
            .background(PanelBackground)
            .padding(10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Row(
            Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
        ) {
            Column {
                Text("MUNDO / TERRENO", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 12.sp)
                Text(
                    "${terrain.resolution} × ${terrain.resolution}  ·  ${terrain.width.toInt()} m  ·  ${terrain.materialLayers.size} camadas",
                    color = SecondaryText,
                    fontSize = 9.sp,
                )
            }
            TextButton(
                onClick = onAutoTile,
                colors = ButtonDefaults.textButtonColors(
                    containerColor = AccentMuted,
                    contentColor = AccentBright,
                ),
            ) { Text("APLICAR AUTO-TILE", fontSize = 9.sp) }
        }
        Row(
            Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(5.dp),
        ) {
            TerrainBrushMode.entries.forEach { mode ->
                val selected = tool.mode == mode
                TextButton(
                    onClick = { onToolChange(mode, null, null, null, null) },
                    colors = ButtonDefaults.textButtonColors(
                        containerColor = if (selected) AccentMuted else RaisedBackground,
                        contentColor = if (selected) AccentBright else SecondaryText,
                    ),
                ) {
                    Text(mode.toolLabel(), fontSize = 9.sp)
                }
            }
        }
        Row(
            Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            TerrainSlider(
                label = "RAIO ${(tool.radius * 100).toInt()}%",
                value = tool.radius,
                range = 0.01f..0.5f,
                onChange = { onToolChange(null, it, null, null, null) },
                modifier = Modifier.weight(1f),
            )
            TerrainSlider(
                label = "FORÇA ${(tool.strength * 100).toInt()}%",
                value = tool.strength,
                range = 0.01f..1f,
                onChange = { onToolChange(null, null, it, null, null) },
                modifier = Modifier.weight(1f),
            )
            if (tool.mode == TerrainBrushMode.FLATTEN) {
                TerrainSlider(
                    label = "ALTURA ${(tool.targetHeight * terrain.maxHeight).toInt()} m",
                    value = tool.targetHeight,
                    range = 0f..1f,
                    onChange = { onToolChange(null, null, null, it, null) },
                    modifier = Modifier.weight(1f),
                )
            }
        }
        if (tool.mode == TerrainBrushMode.PAINT) {
            Row(
                Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                terrain.materialLayers.forEach { layer ->
                    val selected = tool.materialLayerId == layer.id
                    TextButton(
                        onClick = { onToolChange(null, null, null, null, layer.id) },
                        modifier = Modifier.border(
                            2.dp,
                            if (selected) AccentBright else Color(layer.colorArgb),
                        ),
                        colors = ButtonDefaults.textButtonColors(
                            containerColor = Color(layer.colorArgb).copy(alpha = 0.35f),
                            contentColor = PrimaryText,
                        ),
                    ) { Text(layer.name.uppercase(), fontSize = 8.sp) }
                }
            }
        }
        Canvas(
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth()
                .background(Color(0xFF111318))
                .border(1.dp, WorkspaceBorder)
                .pointerInput(terrain.componentId, tool) {
                    detectTapGestures { offset ->
                        onBrush(offset.x / size.width, offset.y / size.height)
                    }
                }
                .pointerInput(terrain.componentId, tool) {
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
                drawRect(
                    color = base.copy(
                        red = (base.red * (0.58f + height * 0.65f)).coerceIn(0f, 1f),
                        green = (base.green * (0.58f + height * 0.65f)).coerceIn(0f, 1f),
                        blue = (base.blue * (0.58f + height * 0.65f)).coerceIn(0f, 1f),
                    ),
                    topLeft = Offset(x * cellWidth, z * cellHeight),
                    size = Size(cellWidth + 0.6f, cellHeight + 0.6f),
                )
            }
        }
        Text(
            "ARRASTE NO MAPA PARA ${tool.mode.toolInstruction()} · cada traço entra no histórico Desfazer/Refazer",
            color = SecondaryText,
            fontSize = 8.sp,
        )
    }
}

@Composable
private fun TerrainSlider(
    label: String,
    value: Float,
    range: ClosedFloatingPointRange<Float>,
    onChange: (Float) -> Unit,
    modifier: Modifier,
) {
    Column(modifier) {
        Text(label, color = SecondaryText, fontSize = 8.sp)
        Slider(value = value, onValueChange = onChange, valueRange = range)
    }
}

private fun TerrainBrushMode.toolLabel(): String = when (this) {
    TerrainBrushMode.RAISE -> "ELEVAR"
    TerrainBrushMode.LOWER -> "BAIXAR"
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

private fun TerrainBrushMode.toolInstruction(): String = when (this) {
    TerrainBrushMode.RAISE -> "elevar o relevo"
    TerrainBrushMode.LOWER -> "escavar o relevo"
    TerrainBrushMode.SMOOTH -> "suavizar desníveis"
    TerrainBrushMode.FLATTEN -> "nivelar na altura escolhida"
    TerrainBrushMode.NOISE -> "adicionar variação natural"
    TerrainBrushMode.PAINT -> "misturar a camada selecionada"
    TerrainBrushMode.STAMP -> "carimbar uma forma na altura alvo"
    TerrainBrushMode.TERRACE -> "criar degraus e mesas"
    TerrainBrushMode.RIDGE -> "formar uma crista montanhosa"
    TerrainBrushMode.CANYON -> "escavar um cânion com bordas"
    TerrainBrushMode.ERODE -> "desgastar e redistribuir o solo"
    TerrainBrushMode.MASK_PAINT -> "proteger a região de processos"
    TerrainBrushMode.MASK_ERASE -> "remover a proteção da região"
}
