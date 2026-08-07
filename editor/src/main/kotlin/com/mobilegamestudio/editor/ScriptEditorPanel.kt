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
import androidx.compose.foundation.layout.height
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
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.mobilegamestudio.core.model.EngineApiCatalog
import com.mobilegamestudio.core.model.EngineApiStability
import com.mobilegamestudio.core.model.EngineApiSurface

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
        CodingToolbar(
            state = state,
            onCreateScript = onCreateScript,
            onSaveScript = onSaveScript,
        )
        RuntimeStatusBar()

        if (state.scriptSource == null) {
            CodingEmptyState(onCreateScript)
            return@Column
        }

        EngineApiBar()
        CodeEditor(state = state, onSourceChange = onSourceChange)
        DiagnosticsPanel(state.scriptDiagnostics)
        CodingStatusLine(state)
    }
}

@Composable
private fun CodingToolbar(
    state: WorkspaceUiState,
    onCreateScript: () -> Unit,
    onSaveScript: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .background(RaisedBackground)
            .padding(horizontal = EditorSpacing.Small, vertical = EditorSpacing.Tiny),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
    ) {
        Column(Modifier.width(150.dp)) {
            Text(
                "CODING WORKSPACE",
                color = PrimaryText,
                fontSize = 10.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = 0.7.sp,
            )
            Text(
                "LUA RUNTIME",
                color = AccentBright,
                fontSize = 8.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = 1.sp,
            )
        }
        Text(
            state.scriptPath ?: "Nenhum script ligado ao objeto",
            modifier = Modifier.weight(1f),
            color = SecondaryText,
            fontFamily = FontFamily.Monospace,
            fontSize = 9.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
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
}

@Composable
private fun RuntimeStatusBar() {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .background(Color(0xFF100E18))
            .border(1.dp, WorkspaceBorder)
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 8.dp, vertical = 5.dp),
        horizontalArrangement = Arrangement.spacedBy(6.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        RuntimeBadge("LUA", "ATIVO", AccentBright)
        RuntimeBadge("JAVA", "API COMPARTILHADA", Color(0xFF8BA7FF))
        RuntimeBadge("PYTHON", "CONTRATO", Color(0xFFE1C46A))
        Text(
            "Java/Python usarão o mesmo Engine API Registry; intérpretes não são marcados como ativos antes do runtime real existir.",
            color = SecondaryText.copy(alpha = 0.8f),
            fontSize = 8.sp,
            fontFamily = FontFamily.Monospace,
            maxLines = 1,
        )
    }
}

@Composable
private fun RuntimeBadge(language: String, status: String, color: Color) {
    Row(
        Modifier
            .background(color.copy(alpha = 0.12f))
            .border(1.dp, color.copy(alpha = 0.55f))
            .padding(horizontal = 7.dp, vertical = 3.dp),
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        Text(language, color = color, fontSize = 8.sp, fontWeight = FontWeight.Bold)
        Text(status, color = SecondaryText, fontSize = 7.sp)
    }
}

@Composable
private fun CodingEmptyState(onCreateScript: () -> Unit) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(20.dp),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text("Crie comportamento com código real", color = PrimaryText, fontSize = 15.sp)
        Spacer(Modifier.height(8.dp))
        Text(
            "O script fica ligado ao objeto selecionado, é validado no sandbox e executado no Play.",
            color = SecondaryText,
            fontSize = 10.sp,
        )
        Spacer(Modifier.height(5.dp))
        Text(
            "NoCode e código passam a compartilhar os mesmos contratos de eventos, Attributes e Engine API.",
            color = SecondaryText.copy(alpha = 0.8f),
            fontSize = 9.sp,
        )
        Spacer(Modifier.height(12.dp))
        PanelAction("CRIAR SCRIPT LUA", onClick = onCreateScript)
    }
}

@Composable
private fun EngineApiBar() {
    val apiEntries = EngineApiCatalog.registry
        .forSurface(EngineApiSurface.LUA)
        .filter { it.stability != EngineApiStability.INTERNAL }
        .take(10)

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .background(PanelBackground)
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = EditorSpacing.Small, vertical = EditorSpacing.Tiny),
        horizontalArrangement = Arrangement.spacedBy(EditorSpacing.Small),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            "ENGINE API",
            color = SecondaryText,
            fontSize = 7.sp,
            fontWeight = FontWeight.Bold,
            letterSpacing = 0.8.sp,
        )
        apiEntries.forEach { definition ->
            val label = definition.aliases.firstOrNull()
                ?: "${definition.namespace}.${definition.name}"
            ApiChip(label)
        }
    }
}

@Composable
private fun CodeEditor(
    state: WorkspaceUiState,
    onSourceChange: (String) -> Unit,
) {
    Row(
        modifier = Modifier
            .weight(1f)
            .fillMaxWidth()
            .border(1.dp, WorkspaceBorder),
    ) {
        val lines = state.scriptSource.orEmpty().lineSequence().count().coerceAtLeast(1)
        Column(
            modifier = Modifier
                .fillMaxHeight()
                .width(46.dp)
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
            value = state.scriptSource.orEmpty(),
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
}

@Composable
private fun DiagnosticsPanel(diagnostics: List<String>) {
    if (diagnostics.isEmpty()) return

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(Color(0xFF26121B))
            .border(1.dp, Color(0xFF542336))
            .padding(horizontal = 10.dp, vertical = 6.dp),
        verticalArrangement = Arrangement.spacedBy(3.dp),
    ) {
        Text(
            "DIAGNÓSTICOS · ${diagnostics.size}",
            color = ErrorText,
            fontWeight = FontWeight.Bold,
            fontSize = 8.sp,
        )
        diagnostics.take(4).forEachIndexed { index, diagnostic ->
            Text(
                "${index + 1}. $diagnostic",
                color = ErrorText,
                fontFamily = FontFamily.Monospace,
                fontSize = 9.sp,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
        }
        if (diagnostics.size > 4) {
            Text(
                "+ ${diagnostics.size - 4} diagnóstico(s)",
                color = SecondaryText,
                fontSize = 8.sp,
            )
        }
    }
}

@Composable
private fun CodingStatusLine(state: WorkspaceUiState) {
    val source = state.scriptSource.orEmpty()
    val lineCount = source.lineSequence().count().coerceAtLeast(1)
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .background(Color(0xFF100E18))
            .padding(horizontal = 9.dp, vertical = 4.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text("Lua", color = AccentBright, fontSize = 8.sp, fontFamily = FontFamily.Monospace)
        Text("$lineCount linhas", color = SecondaryText, fontSize = 8.sp, fontFamily = FontFamily.Monospace)
        Text("${source.length} chars", color = SecondaryText, fontSize = 8.sp, fontFamily = FontFamily.Monospace)
        Text(
            if (state.scriptDiagnostics.isEmpty()) "SEM ERROS" else "${state.scriptDiagnostics.size} ERRO(S)",
            color = if (state.scriptDiagnostics.isEmpty()) Color(0xFF84D7A0) else ErrorText,
            fontSize = 8.sp,
            fontFamily = FontFamily.Monospace,
        )
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
