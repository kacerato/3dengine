package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
internal fun ScriptEditorPanel(
    state: WorkspaceUiState,
    onCreateScript: () -> Unit,
    onSourceChange: (String) -> Unit,
    onSaveScript: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color(0xFF0C0A14)),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(RaisedBackground)
                .padding(horizontal = EditorSpacing.Small, vertical = EditorSpacing.Tiny),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        ) {
            Text(
                "LUA",
                color = AccentBright,
                fontSize = 10.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = 1.sp,
            )
            Text(
                state.scriptPath ?: "Nenhum script ligado ao objeto",
                modifier = Modifier.weight(1f),
                color = SecondaryText,
                fontFamily = FontFamily.Monospace,
                fontSize = 9.sp,
                maxLines = 1,
            )
            if (state.isScriptDirty) {
                Text("● NÃO SALVO", color = AccentBright, fontSize = 8.sp)
            }
            PanelAction(
                if (state.scriptSource == null) "Criar script" else "Novo modelo",
                enabled = state.selectedObject != null && !state.isLoadingScript && !state.isSavingScript,
                onClick = onCreateScript,
            )
            PanelAction(
                if (state.isSavingScript) "Salvando…" else "Salvar + validar",
                selected = state.isScriptDirty,
                enabled = state.scriptSource != null && !state.isSavingScript,
                onClick = onSaveScript,
            )
        }
        if (state.scriptSource == null) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(20.dp),
                verticalArrangement = Arrangement.Center,
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Text("Crie comportamento com código real", color = PrimaryText, fontSize = 15.sp)
                Spacer(Modifier.width(8.dp))
                Text(
                    "O script fica ligado ao objeto selecionado, é validado no sandbox Lua e executado no Play.",
                    color = SecondaryText,
                    fontSize = 10.sp,
                )
            }
            return@Column
        }
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(PanelBackground)
                .horizontalScroll(rememberScrollState())
                .padding(horizontal = EditorSpacing.Small, vertical = EditorSpacing.Tiny),
            horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        ) {
            ApiChip("Scene:GetObject")
            ApiChip("OnTouch:Connect")
            ApiChip("Scene:EmitEvent")
            ApiChip("Scene:OnEvent")
            ApiChip("Transform.rotationX/Y/Z")
            ApiChip("Log.info")
        }
        Row(
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth()
                .border(1.dp, WorkspaceBorder),
        ) {
            val lines = state.scriptSource.lineSequence().count().coerceAtLeast(1)
            Column(
                modifier = Modifier
                    .fillMaxHeight()
                    .width(42.dp)
                    .background(Color(0xFF12101D))
                    .padding(top = 10.dp, end = 8.dp),
                horizontalAlignment = Alignment.End,
            ) {
                repeat(lines) { index ->
                    Text(
                        "${index + 1}",
                        color = SecondaryText.copy(alpha = 0.55f),
                        fontFamily = FontFamily.Monospace,
                        fontSize = 11.sp,
                        lineHeight = 18.sp,
                    )
                }
            }
            BasicTextField(
                value = state.scriptSource,
                onValueChange = onSourceChange,
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .verticalScroll(rememberScrollState())
                    .horizontalScroll(rememberScrollState())
                    .padding(10.dp),
                textStyle = TextStyle(
                    color = Color(0xFFE8DEFF),
                    fontFamily = FontFamily.Monospace,
                    fontSize = 11.sp,
                    lineHeight = 18.sp,
                ),
                cursorBrush = androidx.compose.ui.graphics.SolidColor(AccentBright),
            )
        }
        state.scriptDiagnostics.firstOrNull()?.let { diagnostic ->
            Text(
                "ERRO  $diagnostic",
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color(0xFF351522))
                    .padding(horizontal = 10.dp, vertical = 7.dp),
                color = ErrorText,
                fontFamily = FontFamily.Monospace,
                fontSize = 9.sp,
            )
        }
    }
}

@Composable
private fun ApiChip(label: String) {
    Text(
        label,
        modifier = Modifier
            .background(AccentMuted)
            .padding(horizontal = 8.dp, vertical = 4.dp),
        color = AccentBright,
        fontFamily = FontFamily.Monospace,
        fontSize = 8.sp,
    )
}
