package com.mobilegamestudio.editor

import android.annotation.SuppressLint
import android.graphics.Color
import android.os.Handler
import android.os.Looper
import android.webkit.JavascriptInterface
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color as ComposeColor
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.mobilegamestudio.core.model.EditorMode
import com.mobilegamestudio.core.model.PrimitiveMesh
import com.mobilegamestudio.core.model.SceneDocument
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import com.mobilegamestudio.runtime.RuntimeSceneViewport
import java.io.File
import java.util.concurrent.atomic.AtomicReference
import kotlinx.serialization.Serializable
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.contentOrNull
import kotlinx.serialization.json.decodeFromJsonElement
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive
import org.json.JSONObject

private const val WEB_EDITOR_URL = "file:///android_asset/editor/index.html"

@Serializable
private data class WebEditorSnapshotPayload(
    val projectName: String,
    val scene: SceneDocument,
    val selectedObjectId: String?,
    val mode: String,
    val dirty: Boolean,
    val canUndo: Boolean,
    val canRedo: Boolean,
    val playing: Boolean,
)

private val webEditorJson = Json {
    encodeDefaults = true
    ignoreUnknownKeys = true
    classDiscriminator = "type"
}

@Composable
fun WebWorkspaceRoute(
    viewModel: WebWorkspaceViewModel,
    resolveAsset: (String) -> File?,
    onBack: () -> Unit,
) {
    val state by viewModel.state.collectAsStateWithLifecycle()
    val playScene = state.playScene
    BackHandler(enabled = state.playing) { viewModel.stopPlay() }

    when {
        state.isLoading -> Box(
            modifier = Modifier.fillMaxSize().background(ComposeColor(0xFF0D0F13)),
            contentAlignment = Alignment.Center,
        ) {
            CircularProgressIndicator(color = ComposeColor(0xFF9F7AEA))
        }

        state.scene == null -> Box(
            modifier = Modifier.fillMaxSize().background(ComposeColor(0xFF0D0F13)),
            contentAlignment = Alignment.Center,
        ) {
            Text(state.message ?: "Não foi possível abrir a cena.", color = ComposeColor(0xFFE7E9ED))
        }

        state.playing && playScene != null -> NativePlayPreview(
            document = playScene,
            resolveAsset = resolveAsset,
            onStop = viewModel::stopPlay,
        )

        else -> WebEditorHost(
            state = state,
            viewModel = viewModel,
            onBack = onBack,
        )
    }
}

@Composable
private fun NativePlayPreview(
    document: SceneDocument,
    resolveAsset: (String) -> File?,
    onStop: () -> Unit,
) {
    Box(Modifier.fillMaxSize().background(ComposeColor(0xFF111319))) {
        RuntimeSceneViewport(
            document = document,
            selectedObjectId = null,
            mode = EditorMode.PLAY,
            resolveAsset = resolveAsset,
            onObjectSelected = {},
            onDiagnostic = {},
            modifier = Modifier.fillMaxSize(),
        )
        Button(
            onClick = onStop,
            modifier = Modifier.align(Alignment.TopCenter).padding(top = 12.dp),
            shape = RoundedCornerShape(14.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = ComposeColor(0xE51A1D24),
                contentColor = ComposeColor(0xFFF2A0A6),
            ),
        ) {
            Text("PARAR", fontSize = 11.sp)
        }
    }
}

@SuppressLint("SetJavaScriptEnabled")
@Composable
private fun WebEditorHost(
    state: WebWorkspaceUiState,
    viewModel: WebWorkspaceViewModel,
    onBack: () -> Unit,
) {
    val scene = requireNotNull(state.scene)
    val snapshot = remember(state) {
        webEditorJson.encodeToString(
            WebEditorSnapshotPayload(
                projectName = state.metadata?.name ?: "Projeto",
                scene = scene,
                selectedObjectId = state.selectedObjectId,
                mode = state.tool.name.lowercase(),
                dirty = state.dirty,
                canUndo = state.canUndo,
                canRedo = state.canRedo,
                playing = false,
            ),
        )
    }
    val snapshotReference = remember { AtomicReference(snapshot) }
    snapshotReference.set(snapshot)
    val bridge = remember(viewModel) { WebEditorJavascriptBridge(viewModel, snapshotReference) }
    var webView by remember { mutableStateOf<WebView?>(null) }

    BackHandler {
        if (state.dirty) viewModel.save() else onBack()
    }

    AndroidView(
        modifier = Modifier.fillMaxSize().background(ComposeColor(0xFF0D0F13)),
        factory = { context ->
            WebView(context).apply {
                setBackgroundColor(Color.rgb(13, 15, 19))
                settings.javaScriptEnabled = true
                settings.domStorageEnabled = true
                settings.allowFileAccess = true
                settings.allowContentAccess = false
                settings.databaseEnabled = false
                settings.mediaPlaybackRequiresUserGesture = true
                settings.setSupportZoom(false)
                isHorizontalScrollBarEnabled = false
                isVerticalScrollBarEnabled = false
                overScrollMode = WebView.OVER_SCROLL_NEVER
                webViewClient = object : WebViewClient() {
                    override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                        return request.url.toString().let { url ->
                            !url.startsWith("file:///android_asset/editor/")
                        }
                    }
                }
                addJavascriptInterface(bridge, "MobileGameStudioEditor")
                loadUrl(WEB_EDITOR_URL)
                webView = this
            }
        },
        update = { webView = it },
    )

    LaunchedEffect(snapshot, webView) {
        val target = webView ?: return@LaunchedEffect
        val quoted = JSONObject.quote(snapshot)
        target.evaluateJavascript("window.__MGS_RECEIVE_SNAPSHOT__?.($quoted);", null)
    }

    DisposableEffect(webView) {
        onDispose {
            webView?.removeJavascriptInterface("MobileGameStudioEditor")
            webView?.destroy()
        }
    }
}

private class WebEditorJavascriptBridge(
    private val viewModel: WebWorkspaceViewModel,
    private val snapshotReference: AtomicReference<String>,
) {
    private val mainHandler = Handler(Looper.getMainLooper())

    @JavascriptInterface
    fun getSnapshot(): String = success(snapshotReference.get())

    @JavascriptInterface
    fun dispatch(commandJson: String): String = runCatching {
        val command = webEditorJson.parseToJsonElement(commandJson).jsonObject
        when (command.getValue("type").jsonPrimitive.content) {
            "select-object" -> post {
                viewModel.selectObject(command["objectId"]?.jsonPrimitive?.contentOrNull)
            }
            "set-mode" -> post {
                val tool = when (command.getValue("mode").jsonPrimitive.content) {
                    "select" -> WebEditorTool.SELECT
                    "move" -> WebEditorTool.MOVE
                    "rotate" -> WebEditorTool.ROTATE
                    "scale" -> WebEditorTool.SCALE
                    else -> error("Ferramenta inválida.")
                }
                viewModel.setTool(tool)
            }
            "update-transform" -> post {
                val objectId = command.getValue("objectId").jsonPrimitive.content
                val transform = webEditorJson.decodeFromJsonElement<TransformComponent>(
                    command.getValue("transform"),
                )
                viewModel.updateTransform(objectId, transform)
            }
            "add-primitive" -> post {
                val primitive = PrimitiveMesh.valueOf(command.getValue("primitive").jsonPrimitive.content)
                viewModel.addPrimitive(primitive)
            }
            "add-camera" -> post(viewModel::addCamera)
            "add-directional-light" -> post(viewModel::addDirectionalLight)
            "rename-object" -> post {
                viewModel.renameObject(
                    command.getValue("objectId").jsonPrimitive.content,
                    command.getValue("name").jsonPrimitive.content,
                )
            }
            "toggle-object" -> post {
                viewModel.toggleObject(command.getValue("objectId").jsonPrimitive.content)
            }
            "delete-object" -> post {
                viewModel.deleteObject(command.getValue("objectId").jsonPrimitive.content)
            }
            "set-editor-camera" -> post {
                val orbit = webEditorJson.decodeFromJsonElement<Vector3>(command.getValue("orbit"))
                val target = webEditorJson.decodeFromJsonElement<Vector3>(command.getValue("target"))
                viewModel.setEditorCamera(orbit, target)
            }
            else -> error("Comando não suportado.")
        }
        acknowledgement()
    }.getOrElse(::failure)

    @JavascriptInterface
    fun save(): String = acknowledge(viewModel::save)

    @JavascriptInterface
    fun startPlay(): String = acknowledge(viewModel::startPlay)

    @JavascriptInterface
    fun stopPlay(): String = acknowledge(viewModel::stopPlay)

    @JavascriptInterface
    fun undo(): String = acknowledge(viewModel::undo)

    @JavascriptInterface
    fun redo(): String = acknowledge(viewModel::redo)

    private fun acknowledge(action: () -> Unit): String {
        post(action)
        return acknowledgement()
    }

    private fun post(action: () -> Unit) {
        mainHandler.post(action)
    }

    private fun success(snapshot: String): String = "{\"ok\":true,\"value\":$snapshot}"

    private fun acknowledgement(): String = "{\"ok\":true}"

    private fun failure(error: Throwable): String =
        "{\"ok\":false,\"error\":${JSONObject.quote(error.message ?: "Falha no editor")}}"
}
