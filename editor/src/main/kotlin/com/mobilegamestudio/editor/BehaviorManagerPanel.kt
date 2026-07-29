package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.AnimationControllerComponent
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.ColliderComponent
import com.mobilegamestudio.core.model.LuaScriptComponent
import com.mobilegamestudio.core.model.VehicleControllerComponent
import com.mobilegamestudio.core.model.VisualGraphComponent

@Composable
internal fun BehaviorManagerPanel(
    state: WorkspaceUiState,
    onSelectObject: (String) -> Unit,
) {
    val entries = state.sceneDocument?.objects.orEmpty().mapNotNull { item ->
        val labels = buildList {
            item.components.filterIsInstance<LuaScriptComponent>().forEach {
                add("LUA  ${it.relativePath}")
            }
            item.components.filterIsInstance<VisualGraphComponent>().forEach {
                add("NOCODE  ${it.relativePath}")
            }
            item.components.filterIsInstance<AnimationControllerComponent>().forEach {
                add("ANIMAÇÃO  ${it.defaultClip} · ${it.availableClips.size} clipes")
            }
            item.components.filterIsInstance<CharacterControllerComponent>().forEach {
                add("PERSONAGEM  ${it.cameraMode} · ${it.movementSpeed} m/s")
            }
            item.components.filterIsInstance<VehicleControllerComponent>().forEach {
                add("VEÍCULO  ${it.enginePowerKw.toInt()} kW · ${it.topSpeedKph.toInt()} km/h")
            }
            item.components.filterIsInstance<ColliderComponent>().forEach {
                add("COLISÃO  ${it.shape} · ${it.size.x} × ${it.size.y} × ${it.size.z}")
            }
        }
        labels.takeIf { it.isNotEmpty() }?.let { item.id to (item.name to it) }
    }
    Column(
        Modifier
            .fillMaxSize()
            .background(PanelBackground)
            .padding(10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text("COMPORTAMENTOS DA CENA", color = PrimaryText, fontWeight = FontWeight.Bold, fontSize = 12.sp)
        Text(
            "${entries.size} objetos com lógica, animação, controle ou física. Toque para selecionar e editar.",
            color = SecondaryText,
            fontSize = 9.sp,
        )
        LazyColumn(
            Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            items(entries, key = { it.first }) { (id, value) ->
                val (name, labels) = value
                Column(
                    Modifier
                        .fillMaxWidth()
                        .background(if (id == state.selectedObjectId) AccentMuted else RaisedBackground)
                        .clickable { onSelectObject(id) }
                        .padding(10.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    Row(Modifier.fillMaxWidth()) {
                        Text(name, modifier = Modifier.weight(1f), color = PrimaryText, fontWeight = FontWeight.Bold)
                        Text(if (id == state.selectedObjectId) "SELECIONADO" else "ABRIR", color = AccentBright, fontSize = 8.sp)
                    }
                    labels.forEach { label ->
                        Text(
                            label,
                            color = SecondaryText,
                            fontFamily = FontFamily.Monospace,
                            fontSize = 8.sp,
                        )
                    }
                }
            }
        }
    }
}
