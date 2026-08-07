package com.mobilegamestudio.editor

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectDragGestures
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
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.boundsInRoot
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupProperties
import com.mobilegamestudio.core.model.NoCodeNodeRegistry
import com.mobilegamestudio.core.model.VisualNode
import com.mobilegamestudio.core.model.VisualNodeCategory
import com.mobilegamestudio.core.model.VisualNodeDefinition
import com.mobilegamestudio.core.model.VisualPortDefinition
import com.mobilegamestudio.core.model.VisualPortType
import kotlin.math.roundToInt

private val NodeWidth = 196.dp
private val NodeHeaderHeight = 34.dp

@Composable
internal fun NoCodeEditorPanel(
    state: WorkspaceUiState,
    onCreateTouchGraph: () -> Unit,
    onAddNode: (String) -> Unit,
    onMoveNode: (String, Float, Float) -> Unit,
    onConnectNodes: (String, String, String, String) -> Unit,
    onRemoveLastNode: () -> Unit,
    onSaveGraph: () -> Unit,
    onAddQuickBehavior: (QuickBehavior) -> Unit,
) {
    var paletteOpen by remember { mutableStateOf(false) }
    var zoom by remember { mutableFloatStateOf(1f) }
    Column(Modifier.fillMaxSize().background(Color(0xFF08070C))) {
        NoCodeToolbar(
            state = state,
            zoom = zoom,
            onOpenPalette = { paletteOpen = true },
            onCreateGraph = onCreateTouchGraph,
            onRemoveLast = onRemoveLastNode,
            onSave = onSaveGraph,
            onZoomOut = { zoom = (zoom - 0.1f).coerceAtLeast(0.55f) },
            onZoomReset = { zoom = 1f },
            onZoomIn = { zoom = (zoom + 0.1f).coerceAtMost(1.8f) },
        )
        if (state.visualGraph == null) {
            NoCodeEmptyState(
                onCreate = onCreateTouchGraph,
                onQuickRotate = { onAddQuickBehavior(QuickBehavior.ROTATE_ON_TOUCH) },
                onQuickScale = { onAddQuickBehavior(QuickBehavior.SCALE_ON_TOUCH) },
            )
        } else {
            NodeCanvas(
                state = state,
                zoom = zoom,
                onMoveNode = onMoveNode,
                onConnectNodes = onConnectNodes,
                modifier = Modifier.weight(1f),
            )
        }
    }
    if (paletteOpen) {
        NodeLibraryPopup(
            onDismiss = { paletteOpen = false },
            onAdd = {
                onAddNode(it)
                paletteOpen = false
            },
        )
    }
}

@Composable
private fun NoCodeToolbar(
    state: WorkspaceUiState,
    zoom: Float,
    onOpenPalette: () -> Unit,
    onCreateGraph: () -> Unit,
    onRemoveLast: () -> Unit,
    onSave: () -> Unit,
    onZoomOut: () -> Unit,
    onZoomReset: () -> Unit,
    onZoomIn: () -> Unit,
) {
    Row(
        Modifier
            .fillMaxWidth()
            .height(52.dp)
            .background(RaisedBackground)
            .border(1.dp, WorkspaceBorder)
            .padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(Modifier.width(138.dp)) {
            Text("NOCODE GRAPH", color = PrimaryText, fontSize = 10.sp, fontWeight = FontWeight.Bold)
            Text(
                "${NoCodeNodeRegistry.definitions.size} nós · ${state.visualGraph?.nodes?.size ?: 0} na cena",
                color = SecondaryText,
                fontSize = 8.sp,
            )
        }
        Row(
            Modifier.weight(1f).horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            PanelAction("BIBLIOTECA", enabled = state.visualGraph != null, onClick = onOpenPalette)
            PanelAction("NOVO EVENTO", enabled = !state.isLoadingGraph, onClick = onCreateGraph)
            PanelAction("REMOVER", enabled = (state.visualGraph?.nodes?.size ?: 0) > 1, onClick = onRemoveLastNode)
            PanelAction(if (state.isSavingGraph) "SALVANDO" else "SALVAR", enabled = state.visualGraph != null, onClick = onSave)
            PanelAction("−", onClick = onZoomOut)
            PanelAction("${(zoom * 100).roundToInt()}%", onClick = onZoomReset)
            PanelAction("+", onClick = onZoomIn)
        }
    }
}

@Composable
private fun NodeCanvas(
    state: WorkspaceUiState,
    zoom: Float,
    onMoveNode: (String, Float, Float) -> Unit,
    onConnectNodes: (String, String, String, String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val graph = state.visualGraph ?: return
    val density = LocalDensity.current
    var pendingPort by remember(graph.graphId) { mutableStateOf<PortSelection?>(null) }
    var panX by remember(graph.graphId) { mutableFloatStateOf(0f) }
    var panY by remember(graph.graphId) { mutableFloatStateOf(0f) }
    val portBounds = remember(graph.graphId) { mutableStateMapOf<PortSelection, Rect>() }
    var canvasOrigin by remember(graph.graphId) { mutableStateOf(Offset.Zero) }
    var cableSource by remember(graph.graphId) { mutableStateOf<PortSelection?>(null) }
    var cableStart by remember(graph.graphId) { mutableStateOf<Offset?>(null) }
    var cableEnd by remember(graph.graphId) { mutableStateOf<Offset?>(null) }

    fun finishCable() {
        val source = cableSource
        val end = cableEnd
        val target = if (source != null && end != null) {
            portBounds.entries.firstOrNull { (selection, bounds) ->
                selection != source &&
                    selection.isOutput != source.isOutput &&
                    bounds.contains(end)
            }?.key
        } else {
            null
        }
        if (source != null && target != null) {
            if (source.isOutput) {
                onConnectNodes(source.nodeId, source.portId, target.nodeId, target.portId)
            } else {
                onConnectNodes(target.nodeId, target.portId, source.nodeId, source.portId)
            }
        }
        cableSource = null
        cableStart = null
        cableEnd = null
    }

    Box(
        modifier
            .clipToBounds()
            .background(Color(0xFF07070A))
            .onGloballyPositioned { canvasOrigin = it.boundsInRoot().topLeft },
    ) {
        Canvas(
            Modifier
                .fillMaxSize()
                .pointerInput(graph.graphId, zoom) {
                    detectDragGestures { change, amount ->
                        change.consume()
                        panX += amount.x
                        panY += amount.y
                    }
                },
        ) {
            val minor = with(density) { 20.dp.toPx() }
            val major = minor * 5f
            var x = panX % minor
            while (x < size.width) {
                drawLine(Color(0xFF17131F), start = androidx.compose.ui.geometry.Offset(x, 0f), end = androidx.compose.ui.geometry.Offset(x, size.height))
                x += minor
            }
            var y = panY % minor
            while (y < size.height) {
                drawLine(Color(0xFF17131F), start = androidx.compose.ui.geometry.Offset(0f, y), end = androidx.compose.ui.geometry.Offset(size.width, y))
                y += minor
            }
            x = panX % major
            while (x < size.width) {
                drawLine(Color(0xFF241B31), start = androidx.compose.ui.geometry.Offset(x, 0f), end = androidx.compose.ui.geometry.Offset(x, size.height))
                x += major
            }
            y = panY % major
            while (y < size.height) {
                drawLine(Color(0xFF241B31), start = androidx.compose.ui.geometry.Offset(0f, y), end = androidx.compose.ui.geometry.Offset(size.width, y))
                y += major
            }
        }
        Box(
            Modifier
                .fillMaxSize()
                .graphicsLayer(
                    scaleX = zoom,
                    scaleY = zoom,
                    translationX = panX,
                    translationY = panY,
                    transformOrigin = androidx.compose.ui.graphics.TransformOrigin(0f, 0f),
                ),
        ) {
            Canvas(Modifier.fillMaxSize()) {
                val positions = graph.nodes.mapIndexed { index, node ->
                    node.id to nodeCanvasPosition(node, index)
                }.toMap()
                graph.connections.forEach { connection ->
                    val from = positions[connection.fromNodeId] ?: return@forEach
                    val to = positions[connection.toNodeId] ?: return@forEach
                    val startX = with(density) { (from.first.dp + NodeWidth).toPx() }
                    val startY = with(density) { (from.second.dp + 51.dp).toPx() }
                    val endX = with(density) { to.first.dp.toPx() }
                    val endY = with(density) { (to.second.dp + 51.dp).toPx() }
                    val bend = ((endX - startX) * 0.5f).coerceAtLeast(48f)
                    val path = Path().apply {
                        moveTo(startX, startY)
                        cubicTo(startX + bend, startY, endX - bend, endY, endX, endY)
                    }
                    drawPath(path, Color(0xFF9D57F5), style = Stroke(width = 3f))
                }
            }
            graph.nodes.forEachIndexed { index, node ->
                val initial = nodeCanvasPosition(node, index)
                var dragX by remember(node.id, node.positionX) { mutableFloatStateOf(initial.first) }
                var dragY by remember(node.id, node.positionY) { mutableFloatStateOf(initial.second) }
                FlowNodeCard(
                    node = node,
                    onPortTap = { port, isOutput ->
                        val tapped = PortSelection(node.id, port.id, port.type, isOutput)
                        val pending = pendingPort
                        when {
                            pending == null -> pendingPort = tapped
                            pending.isOutput == tapped.isOutput -> pendingPort = tapped
                            pending.isOutput -> {
                                onConnectNodes(pending.nodeId, pending.portId, tapped.nodeId, tapped.portId)
                                pendingPort = null
                            }
                            else -> {
                                onConnectNodes(tapped.nodeId, tapped.portId, pending.nodeId, pending.portId)
                                pendingPort = null
                            }
                        }
                    },
                    onPortBounds = { port, isOutput, bounds ->
                        portBounds[PortSelection(node.id, port.id, port.type, isOutput)] = bounds
                    },
                    onCableStart = { port, isOutput, position ->
                        val source = PortSelection(node.id, port.id, port.type, isOutput)
                        pendingPort = null
                        cableSource = source
                        cableStart = position
                        cableEnd = position
                    },
                    onCableDrag = { cableEnd = it },
                    onCableEnd = ::finishCable,
                    onCableCancel = {
                        cableSource = null
                        cableStart = null
                        cableEnd = null
                    },
                    modifier = Modifier
                        .offset { IntOffset(dragX.dp.roundToPx(), dragY.dp.roundToPx()) }
                        .pointerInput(node.id, zoom) {
                            detectDragGestures(
                                onDragEnd = { onMoveNode(node.id, dragX, dragY) },
                            ) { change, amount ->
                                change.consume()
                                dragX += amount.x / density.density / zoom
                                dragY += amount.y / density.density / zoom
                            }
                        },
                )
            }
        }
        val previewStart = cableStart
        val previewEnd = cableEnd
        if (previewStart != null && previewEnd != null) {
            Canvas(Modifier.fillMaxSize()) {
                val start = previewStart - canvasOrigin
                val end = previewEnd - canvasOrigin
                val bend = ((end.x - start.x) * 0.5f).coerceAtLeast(48f)
                val path = Path().apply {
                    moveTo(start.x, start.y)
                    cubicTo(start.x + bend, start.y, end.x - bend, end.y, end.x, end.y)
                }
                drawPath(path, Color(0xFFB56CFF), style = Stroke(width = 4f))
                drawCircle(Color(0xFFE7CEFF), radius = 5f, center = end)
            }
        }
        Text(
            pendingPort?.let { "SELECIONE UMA PORTA ${if (it.isOutput) "DE ENTRADA" else "DE SAÍDA"} COMPATÍVEL" }
                ?: "ARRASTE O FUNDO PARA NAVEGAR · ARRASTE OS NÓS · PUXE UMA PORTA ATÉ OUTRA PARA CONECTAR",
            modifier = Modifier.align(Alignment.BottomStart).padding(10.dp),
            color = SecondaryText.copy(alpha = 0.65f),
            fontSize = 8.sp,
            fontFamily = FontFamily.Monospace,
        )
    }
}

private fun nodeCanvasPosition(node: VisualNode, index: Int): Pair<Float, Float> =
    if (node.positionX == 0f && node.positionY == 0f) {
        (64f + (index % 4) * 230f) to (72f + (index / 4) * 150f)
    } else {
        node.positionX to node.positionY
    }

@Composable
private fun FlowNodeCard(
    node: VisualNode,
    onPortTap: (VisualPortDefinition, Boolean) -> Unit,
    onPortBounds: (VisualPortDefinition, Boolean, Rect) -> Unit,
    onCableStart: (VisualPortDefinition, Boolean, Offset) -> Unit,
    onCableDrag: (Offset) -> Unit,
    onCableEnd: () -> Unit,
    onCableCancel: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val definition = NoCodeNodeRegistry.definitionFor(node)
    val category = definition?.category ?: VisualNodeCategory.DEBUG
    val categoryColor = categoryColor(category)
    Column(
        modifier
            .width(NodeWidth)
            .background(Color(0xFF131119), RoundedCornerShape(6.dp))
            .border(1.dp, categoryColor.copy(alpha = 0.85f), RoundedCornerShape(6.dp)),
    ) {
        Row(
            Modifier
                .fillMaxWidth()
                .height(NodeHeaderHeight)
                .background(categoryColor.copy(alpha = 0.28f), RoundedCornerShape(topStart = 6.dp, topEnd = 6.dp))
                .padding(horizontal = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(categoryBadge(category), color = categoryColor, fontSize = 8.sp, fontWeight = FontWeight.Black)
            Spacer(Modifier.width(7.dp))
            Text(
                definition?.title ?: node.type.name,
                modifier = Modifier.weight(1f),
                color = PrimaryText,
                fontSize = 9.sp,
                fontWeight = FontWeight.SemiBold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Text("⋮", color = SecondaryText, fontSize = 13.sp)
        }
        Column(Modifier.fillMaxWidth().padding(vertical = 6.dp)) {
            val inputs = definition?.inputs.orEmpty()
            val outputs = definition?.outputs.orEmpty()
            val lines = maxOf(inputs.size, outputs.size, 1)
            repeat(lines.coerceAtMost(5)) { index ->
                PortRow(
                    input = inputs.getOrNull(index),
                    output = outputs.getOrNull(index),
                    onInput = { onPortTap(it, false) },
                    onOutput = { onPortTap(it, true) },
                    onPortBounds = onPortBounds,
                    onCableStart = onCableStart,
                    onCableDrag = onCableDrag,
                    onCableEnd = onCableEnd,
                    onCableCancel = onCableCancel,
                )
            }
            if (lines > 5) {
                Text(
                    "+${lines - 5} portas",
                    modifier = Modifier.padding(horizontal = 9.dp, vertical = 3.dp),
                    color = SecondaryText,
                    fontSize = 7.sp,
                )
            }
            val boundValue = node.objectName ?: node.textValue ?: node.numberValue?.toString()
            if (!boundValue.isNullOrBlank()) {
                Text(
                    boundValue,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 9.dp, vertical = 4.dp)
                        .background(Color(0xFF09080D), RoundedCornerShape(3.dp))
                        .padding(5.dp),
                    color = Color(0xFFD8D1E2),
                    fontFamily = FontFamily.Monospace,
                    fontSize = 7.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
    }
}

@Composable
private fun PortRow(
    input: VisualPortDefinition?,
    output: VisualPortDefinition?,
    onInput: (VisualPortDefinition) -> Unit,
    onOutput: (VisualPortDefinition) -> Unit,
    onPortBounds: (VisualPortDefinition, Boolean, Rect) -> Unit,
    onCableStart: (VisualPortDefinition, Boolean, Offset) -> Unit,
    onCableDrag: (Offset) -> Unit,
    onCableEnd: () -> Unit,
    onCableCancel: () -> Unit,
) {
    Row(
        Modifier.fillMaxWidth().height(20.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        if (input != null) {
            PortDot(
                type = input.type,
                onClick = { onInput(input) },
                onBounds = { onPortBounds(input, false, it) },
                onDragStart = { onCableStart(input, false, it) },
                onDrag = onCableDrag,
                onDragEnd = onCableEnd,
                onDragCancel = onCableCancel,
            )
        }
        Text(
            input?.label.orEmpty(),
            modifier = Modifier.weight(1f).padding(start = 4.dp),
            color = SecondaryText,
            fontSize = 7.sp,
            maxLines = 1,
        )
        Text(
            output?.label.orEmpty(),
            modifier = Modifier.weight(1f).padding(end = 4.dp),
            color = SecondaryText,
            fontSize = 7.sp,
            maxLines = 1,
        )
        if (output != null) {
            PortDot(
                type = output.type,
                onClick = { onOutput(output) },
                onBounds = { onPortBounds(output, true, it) },
                onDragStart = { onCableStart(output, true, it) },
                onDrag = onCableDrag,
                onDragEnd = onCableEnd,
                onDragCancel = onCableCancel,
            )
        }
    }
}

@Composable
private fun PortDot(
    type: VisualPortType,
    onClick: () -> Unit,
    onBounds: (Rect) -> Unit,
    onDragStart: (Offset) -> Unit,
    onDrag: (Offset) -> Unit,
    onDragEnd: () -> Unit,
    onDragCancel: () -> Unit,
) {
    var bounds by remember { mutableStateOf(Rect.Zero) }
    Surface(
        onClick = onClick,
        modifier = Modifier
            .size(18.dp)
            .onGloballyPositioned {
                bounds = it.boundsInRoot()
                onBounds(bounds)
            }
            .pointerInput(type, bounds) {
                detectDragGestures(
                    onDragStart = { local ->
                        onDragStart(bounds.topLeft + local)
                    },
                    onDragEnd = onDragEnd,
                    onDragCancel = onDragCancel,
                ) { change, _ ->
                    change.consume()
                    onDrag(bounds.topLeft + change.position)
                }
            },
        color = portColor(type),
        shape = CircleShape,
        border = androidx.compose.foundation.BorderStroke(2.dp, Color.Black.copy(alpha = 0.6f)),
    ) {}
}

@Composable
private fun NodeLibraryPopup(onDismiss: () -> Unit, onAdd: (String) -> Unit) {
    var search by remember { mutableStateOf("") }
    var category by remember { mutableStateOf<VisualNodeCategory?>(null) }
    var selectedDefinition by remember { mutableStateOf<VisualNodeDefinition?>(null) }
    val filtered = remember(search, category) {
        NoCodeNodeRegistry.definitions.filter { definition ->
            (category == null || definition.category == category) &&
                (
                    search.isBlank() ||
                        definition.title.contains(search, ignoreCase = true) ||
                        definition.id.contains(search, ignoreCase = true) ||
                        definition.keywords.any { it.contains(search, ignoreCase = true) }
                    )
        }
    }
    Popup(
        alignment = Alignment.Center,
        onDismissRequest = onDismiss,
        properties = PopupProperties(focusable = true),
    ) {
        Surface(
            modifier = Modifier.width(760.dp).fillMaxHeight(0.88f),
            color = Color(0xFF111016),
            shape = RoundedCornerShape(8.dp),
            border = androidx.compose.foundation.BorderStroke(1.dp, Color(0xFF5C3A78)),
            shadowElevation = 18.dp,
        ) {
            Column(Modifier.fillMaxSize().padding(12.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Column(Modifier.weight(1f)) {
                        Text("BIBLIOTECA DE NÓS", color = PrimaryText, fontSize = 13.sp, fontWeight = FontWeight.Bold)
                        Text("${filtered.size} de ${NoCodeNodeRegistry.definitions.size} operações", color = SecondaryText, fontSize = 9.sp)
                    }
                    PanelAction("FECHAR", onClick = onDismiss)
                }
                OutlinedTextField(
                    value = search,
                    onValueChange = { search = it.take(80) },
                    modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp),
                    placeholder = { Text("Buscar por ação, sistema ou tipo", fontSize = 10.sp) },
                    singleLine = true,
                )
                Row(
                    Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(5.dp),
                ) {
                    PanelAction("TODOS", selected = category == null) { category = null }
                    VisualNodeCategory.entries.forEach { item ->
                        PanelAction(item.label.uppercase(), selected = category == item) { category = item }
                    }
                }
                Spacer(Modifier.height(8.dp))
                Row(Modifier.fillMaxSize(), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                    LazyColumn(
                        Modifier.weight(1.15f).fillMaxHeight(),
                        verticalArrangement = Arrangement.spacedBy(4.dp),
                    ) {
                        items(filtered, key = VisualNodeDefinition::id) { definition ->
                            NodeLibraryRow(
                                definition = definition,
                                selected = selectedDefinition?.id == definition.id,
                                onInspect = { selectedDefinition = definition },
                                onAdd = { onAdd(definition.id) },
                            )
                        }
                    }
                    NodeDocumentationPane(
                        definition = selectedDefinition ?: filtered.firstOrNull(),
                        onAdd = { definition -> onAdd(definition.id) },
                        modifier = Modifier.weight(0.85f).fillMaxHeight(),
                    )
                }
            }
        }
    }
}

@Composable
private fun NodeLibraryRow(
    definition: VisualNodeDefinition,
    selected: Boolean,
    onInspect: () -> Unit,
    onAdd: () -> Unit,
) {
    Surface(
        onClick = onInspect,
        modifier = Modifier.fillMaxWidth(),
        color = if (selected) AccentMuted else Color(0xFF18151F),
        shape = RoundedCornerShape(5.dp),
    ) {
        Row(Modifier.padding(horizontal = 10.dp, vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
            Box(
                Modifier
                    .size(32.dp)
                    .background(categoryColor(definition.category).copy(alpha = 0.18f), RoundedCornerShape(4.dp)),
                contentAlignment = Alignment.Center,
            ) {
                Text(categoryBadge(definition.category), color = categoryColor(definition.category), fontSize = 8.sp, fontWeight = FontWeight.Black)
            }
            Spacer(Modifier.width(9.dp))
            Column(Modifier.weight(1f)) {
                Text(definition.title, color = PrimaryText, fontSize = 10.sp, fontWeight = FontWeight.Medium)
                Text(
                    "${definition.category.label} · ${definition.inputs.size} entradas · ${definition.outputs.size} saídas",
                    color = SecondaryText,
                    fontSize = 8.sp,
                )
            }
            Surface(
                onClick = onAdd,
                color = AccentMuted,
                shape = RoundedCornerShape(4.dp),
            ) {
                Text(
                    "ADICIONAR",
                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp),
                    color = AccentBright,
                    fontSize = 8.sp,
                    fontWeight = FontWeight.Bold,
                )
            }
        }
    }
}

@Composable
private fun NodeDocumentationPane(
    definition: VisualNodeDefinition?,
    onAdd: (VisualNodeDefinition) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier
            .background(Color(0xFF18151F), RoundedCornerShape(6.dp))
            .border(1.dp, Color(0xFF32283E), RoundedCornerShape(6.dp))
            .padding(12.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        if (definition == null) {
            Text("Nenhum nó encontrado.", color = SecondaryText, fontSize = 10.sp)
            return@Column
        }
        val docs = definition.documentation
        Text(definition.title, color = PrimaryText, fontSize = 13.sp, fontWeight = FontWeight.Bold)
        Text(definition.id, color = AccentBright, fontSize = 8.sp, fontFamily = FontFamily.Monospace)
        Text(docs.summary, color = SecondaryText, fontSize = 10.sp)
        Text("ENTRADAS", color = PrimaryText, fontSize = 9.sp, fontWeight = FontWeight.Bold)
        if (docs.inputs.isEmpty()) Text("Este nó não recebe entradas.", color = SecondaryText, fontSize = 9.sp)
        docs.inputs.forEach { Text(it.description, color = SecondaryText, fontSize = 9.sp) }
        Text("SAÍDAS", color = PrimaryText, fontSize = 9.sp, fontWeight = FontWeight.Bold)
        if (docs.outputs.isEmpty()) Text("Este nó não produz saídas.", color = SecondaryText, fontSize = 9.sp)
        docs.outputs.forEach { Text(it.description, color = SecondaryText, fontSize = 9.sp) }
        Text("COMO USAR", color = PrimaryText, fontSize = 9.sp, fontWeight = FontWeight.Bold)
        Text(docs.example, color = SecondaryText, fontSize = 9.sp)
        Spacer(Modifier.weight(1f))
        PanelAction("ADICIONAR AO GRAFO") { onAdd(definition) }
    }
}

@Composable
private fun NoCodeEmptyState(
    onCreate: () -> Unit,
    onQuickRotate: () -> Unit,
    onQuickScale: () -> Unit,
) {
    Column(
        Modifier.fillMaxSize().padding(28.dp),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text("CRIE A PRIMEIRA LÓGICA VISUAL", color = PrimaryText, fontSize = 14.sp, fontWeight = FontWeight.Bold)
        Text(
            "Eventos, fluxo, matemática, vetores, física, áudio, animação, materiais, interface e save game.",
            color = SecondaryText,
            fontSize = 10.sp,
        )
        Spacer(Modifier.height(14.dp))
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            PanelAction("NOVO GRAFO", onClick = onCreate)
            PanelAction("GIRAR AO TOCAR", onClick = onQuickRotate)
            PanelAction("ESCALAR AO TOCAR", onClick = onQuickScale)
        }
    }
}

private fun categoryBadge(category: VisualNodeCategory): String = when (category) {
    VisualNodeCategory.EVENTS -> "EV"
    VisualNodeCategory.FLOW -> "FL"
    VisualNodeCategory.INPUT -> "IN"
    VisualNodeCategory.MATH -> "MX"
    VisualNodeCategory.COMPARE -> "CP"
    VisualNodeCategory.VECTOR -> "V3"
    VisualNodeCategory.COLOR -> "RGB"
    VisualNodeCategory.TEXT -> "TX"
    VisualNodeCategory.LIST -> "LS"
    VisualNodeCategory.OBJECT -> "OB"
    VisualNodeCategory.TRANSFORM -> "TR"
    VisualNodeCategory.PHYSICS -> "PH"
    VisualNodeCategory.VEHICLE -> "VH"
    VisualNodeCategory.AUDIO -> "AU"
    VisualNodeCategory.ANIMATION -> "AN"
    VisualNodeCategory.MATERIAL -> "MT"
    VisualNodeCategory.UI -> "UI"
    VisualNodeCategory.WORLD -> "WD"
    VisualNodeCategory.SAVE_GAME -> "SV"
    VisualNodeCategory.TIME -> "TM"
    VisualNodeCategory.DEBUG -> "DB"
}

private fun categoryColor(category: VisualNodeCategory): Color = when (category) {
    VisualNodeCategory.EVENTS -> Color(0xFFE05263)
    VisualNodeCategory.FLOW -> Color(0xFFB56CFF)
    VisualNodeCategory.INPUT -> Color(0xFF63A4FF)
    VisualNodeCategory.MATH, VisualNodeCategory.COMPARE -> Color(0xFFF3C84B)
    VisualNodeCategory.VECTOR -> Color(0xFF65D17D)
    VisualNodeCategory.COLOR, VisualNodeCategory.MATERIAL -> Color(0xFFFF7CCA)
    VisualNodeCategory.TEXT, VisualNodeCategory.LIST -> Color(0xFF53D3C4)
    VisualNodeCategory.OBJECT, VisualNodeCategory.TRANSFORM -> Color(0xFF8C7BFF)
    VisualNodeCategory.PHYSICS -> Color(0xFF4FB5E8)
    VisualNodeCategory.VEHICLE -> Color(0xFFE85B4F)
    VisualNodeCategory.AUDIO -> Color(0xFFFF9D55)
    VisualNodeCategory.ANIMATION -> Color(0xFFD47CFF)
    VisualNodeCategory.UI -> Color(0xFF55C6FF)
    VisualNodeCategory.WORLD -> Color(0xFF6FD489)
    VisualNodeCategory.SAVE_GAME -> Color(0xFFE7B65A)
    VisualNodeCategory.TIME -> Color(0xFFA9B8C9)
    VisualNodeCategory.DEBUG -> Color(0xFFFF6678)
}

private fun portColor(type: VisualPortType): Color = when (type) {
    VisualPortType.FLOW -> Color(0xFFB56CFF)
    VisualPortType.BOOLEAN -> Color(0xFFE05263)
    VisualPortType.NUMBER -> Color(0xFFF3D151)
    VisualPortType.TEXT -> Color(0xFF58D4C1)
    VisualPortType.VECTOR2, VisualPortType.VECTOR3, VisualPortType.VECTOR4 -> Color(0xFF65D17D)
    VisualPortType.COLOR -> Color(0xFFFF7CCA)
    VisualPortType.OBJECT, VisualPortType.COMPONENT -> Color(0xFF9D8BFF)
    VisualPortType.ASSET -> Color(0xFF68A9FF)
    VisualPortType.LIST -> Color(0xFF5ED0E5)
    VisualPortType.ANY -> Color(0xFFC8C3CF)
}

private data class PortSelection(
    val nodeId: String,
    val portId: String,
    val type: VisualPortType,
    val isOutput: Boolean,
)
