from pathlib import Path
import re


def read(path: str) -> str:
    return Path(path).read_text(encoding='utf-8')


def write(path: str, content: str) -> None:
    Path(path).write_text(content, encoding='utf-8')


def replace_once(text: str, old: str, new: str, label: str) -> str:
    if new in text:
        return text
    if old not in text:
        raise RuntimeError(f'{label}: trecho não encontrado: {old[:160]!r}')
    return text.replace(old, new, 1)


def replace_regex(text: str, pattern: str, replacement: str, label: str) -> str:
    if replacement in text:
        return text
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE | re.DOTALL)
    if count != 1:
        raise RuntimeError(f'{label}: padrão não encontrado ou ambíguo ({count})')
    return updated


# ---------------------------------------------------------------------------
# Main editor shell: coherent workspace tabs, non-blocking docks and viewport.
# ---------------------------------------------------------------------------
shell_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt'
shell = read(shell_path)
if 'import androidx.compose.ui.draw.clip\n' not in shell:
    shell = shell.replace(
        'import androidx.compose.ui.graphics.Color\n',
        'import androidx.compose.ui.graphics.Color\nimport androidx.compose.ui.draw.clip\n',
        1,
    )

if 'private data class StudioWorkspaceTabSpec' not in shell:
    shell = replace_regex(
        shell,
        r'@Composable\nprivate fun StudioWorkspaceTabs\([\s\S]*?\n}\n\n@Composable\nprivate fun StudioDockRail',
        '''private data class StudioWorkspaceTabSpec(
    val glyph: String,
    val label: String,
    val hint: String,
    val selected: Boolean,
    val onClick: () -> Unit,
)

@Composable
private fun StudioWorkspaceTabs(
    selected: StudioPopup?,
    onScene: () -> Unit,
    onCode: () -> Unit,
    onNoCode: () -> Unit,
    onPlay: () -> Unit,
    onResources: () -> Unit,
) {
    val tabs = listOf(
        StudioWorkspaceTabSpec("◇", "3D", "Cena e mundo", selected == null || selected == StudioPopup.SCENE || selected == StudioPopup.INSPECTOR, onScene),
        StudioWorkspaceTabSpec("</>", "Código", "Lua do projeto", selected == StudioPopup.CODE, onCode),
        StudioWorkspaceTabSpec("⌘", "NoCode", "Grafos visuais", selected == StudioPopup.NOCODE, onNoCode),
        StudioWorkspaceTabSpec("▶", "Jogo", "Executar cena", false, onPlay),
        StudioWorkspaceTabSpec("▤", "Recursos", "Arquivos e assets", selected == StudioPopup.FILES || selected == StudioPopup.ASSETS, onResources),
    )
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(54.dp)
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder)
            .padding(horizontal = 8.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(6.dp),
    ) {
        tabs.forEach { tab ->
            StudioTab(
                glyph = tab.glyph,
                label = tab.label,
                hint = tab.hint,
                selected = tab.selected,
                onClick = tab.onClick,
                modifier = Modifier.weight(1f),
            )
        }
    }
}

@Composable
private fun StudioTab(
    glyph: String,
    label: String,
    hint: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    TextButton(
        onClick = onClick,
        modifier = modifier.fillMaxHeight(),
        shape = RoundedCornerShape(14.dp),
        colors = ButtonDefaults.textButtonColors(
            containerColor = if (selected) AccentMuted else RaisedBackground,
            contentColor = if (selected) AccentBright else SecondaryText,
        ),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 8.dp, vertical = 3.dp),
    ) {
        Text(glyph, fontSize = if (glyph.length > 1) 8.sp else 13.sp, fontWeight = FontWeight.Bold)
        Column(
            modifier = Modifier.padding(start = 7.dp),
            horizontalAlignment = Alignment.Start,
        ) {
            Text(label, fontSize = 8.sp, fontWeight = FontWeight.Bold, maxLines = 1)
            Text(hint, fontSize = 5.5.sp, color = if (selected) AccentBright.copy(alpha = 0.76f) else SecondaryText, maxLines = 1)
        }
    }
}

@Composable
private fun StudioDockRail''',
        'workspace tabs',
    )

if 'CÂMERA: arraste fora do controle' not in shell:
    shell = replace_regex(
        shell,
        r'@Composable\nprivate fun CompactViewportTools\([\s\S]*?\n}\n\n@Composable\nprivate fun StudioBottomDock',
        '''@Composable
private fun CompactViewportTools(selected: EditorTool, onSelected: (EditorTool) -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(48.dp)
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder)
            .padding(horizontal = 8.dp, vertical = 5.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        EditorTool.entries.forEach { tool ->
            val active = tool == selected
            TextButton(
                onClick = { onSelected(tool) },
                modifier = Modifier.height(38.dp),
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.textButtonColors(
                    containerColor = if (active) AccentMuted else RaisedBackground,
                    contentColor = if (active) AccentBright else SecondaryText,
                ),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 10.dp),
            ) {
                Text(
                    when (tool) {
                        EditorTool.SELECT -> "◇  Selecionar"
                        EditorTool.MOVE -> "↔  Mover"
                        EditorTool.ROTATE -> "⟳  Girar"
                        EditorTool.SCALE -> "⤢  Escalar"
                    },
                    fontSize = 7.5.sp,
                    fontWeight = if (active) FontWeight.Bold else FontWeight.Normal,
                )
            }
        }
        Spacer(Modifier.weight(1f))
        Text(
            "CÂMERA: arraste fora do controle · pinça: zoom",
            color = SecondaryText,
            fontSize = 5.8.sp,
            maxLines = 1,
            modifier = Modifier.padding(end = 6.dp),
        )
    }
}

@Composable
private fun StudioBottomDock''',
        'viewport toolbar',
    )

old_viewport_modifier = '''                            modifier = Modifier
                                .weight(1f)
                                .fillMaxWidth(),
                        )'''
new_viewport_modifier = '''                            modifier = Modifier
                                .weight(1f)
                                .fillMaxWidth()
                                .padding(horizontal = 8.dp, vertical = 6.dp)
                                .clip(RoundedCornerShape(18.dp))
                                .background(Color.Black)
                                .border(1.dp, WorkspaceBorder, RoundedCornerShape(18.dp)),
                        )'''
if new_viewport_modifier not in shell:
    shell = replace_once(shell, old_viewport_modifier, new_viewport_modifier, 'main viewport surface')

shell = replace_once(
    shell,
    'properties = PopupProperties(focusable = true),',
    'properties = PopupProperties(focusable = !side),',
    'non blocking side docks',
)

old_backdrop = '''            Box(
                Modifier
                    .fillMaxSize()
                    .background(if (side) Color.Transparent else Color.Black.copy(alpha = 0.62f))
                    .clickable(onClick = onClose),
            )'''
new_backdrop = '''            if (!side) {
                Box(
                    Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.62f))
                        .clickable(onClick = onClose),
                )
            }'''
shell = replace_once(shell, old_backdrop, new_backdrop, 'modal backdrop')

old_width = '''            val widthFraction = if (side) {
                when {
                    panel == StudioPopup.WORLD && maxWidth < 720.dp -> 0.72f
                    panel == StudioPopup.WORLD -> 0.46f
                    maxWidth < 720.dp -> 0.58f
                    else -> 0.34f
                }
            } else {
                if (maxWidth < 720.dp) 0.94f else 0.84f
            }
            val heightFraction = if (side) 1f else if (maxHeight < 440.dp) 0.94f else 0.88f'''
new_width = '''            val widthFraction = if (side) {
                when {
                    maxWidth < 720.dp -> 0.58f
                    panel == StudioPopup.FILES || panel == StudioPopup.SCENE -> 0.38f
                    else -> 0.34f
                }
            } else {
                if (maxWidth < 720.dp) 0.96f else 0.90f
            }
            val heightFraction = if (side) 0.92f else if (maxHeight < 440.dp) 0.96f else 0.90f'''
shell = replace_once(shell, old_width, new_width, 'panel dimensions')

old_panel_modifier = '''                modifier = Modifier
                    .fillMaxWidth(widthFraction)
                    .fillMaxHeight(heightFraction)
                    .padding(8.dp)
                    .background(PanelBackground, RoundedCornerShape(18.dp))
                    .border(1.dp, WorkspaceBorder, RoundedCornerShape(18.dp))
                    .imePadding(),'''
new_panel_modifier = '''                modifier = Modifier
                    .fillMaxWidth(widthFraction)
                    .fillMaxHeight(heightFraction)
                    .padding(
                        start = 8.dp,
                        end = 8.dp,
                        top = if (side) 8.dp else 12.dp,
                        bottom = if (side) 48.dp else 12.dp,
                    )
                    .background(PanelBackground, RoundedCornerShape(20.dp))
                    .border(1.dp, WorkspaceBorder, RoundedCornerShape(20.dp))
                    .imePadding(),'''
shell = replace_once(shell, old_panel_modifier, new_panel_modifier, 'panel surface')
write(shell_path, shell)


# ---------------------------------------------------------------------------
# Viewport transformation: axis-specific drag; no screen-space object jumping.
# ---------------------------------------------------------------------------
scene_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/SceneViewport.kt'
scene = read(scene_path)
scene = scene.replace(
    '            transformGesturesEnabled = !state.isPreviewRunning && state.activeTool != EditorTool.SELECT && !terrainAuthoringEnabled,',
    '            transformGesturesEnabled = false,',
    1,
)
old_drag = '''                .pointerInput(tool, objectName) {
                    detectDragGestures { change, amount ->
                        change.consume()
                        onFreeDrag(amount.x, amount.y)
                    }
                },'''
new_drag = '''                .pointerInput(tool, objectName, axis) {
                    detectDragGestures { change, amount ->
                        change.consume()
                        val dominant = if (kotlin.math.abs(amount.x) >= kotlin.math.abs(amount.y)) amount.x else -amount.y
                        val delta = when (tool) {
                            EditorTool.MOVE -> dominant / 120f
                            EditorTool.ROTATE -> dominant / 3.5f
                            EditorTool.SCALE -> dominant / 260f
                            EditorTool.SELECT -> 0f
                        }
                        if (delta != 0f) onAxisDelta(property, axis, delta)
                    }
                },'''
scene = replace_once(scene, old_drag, new_drag, 'axis transform drag')
scene = scene.replace(
    '            Text("ARRASTE", color = Color(0xFFADB3BD), fontSize = 7.sp)',
    '            Text("ARRASTE NO EIXO", color = Color(0xFFADB3BD), fontSize = 6.5.sp)',
    1,
)
write(scene_path, scene)


# ---------------------------------------------------------------------------
# Runtime player camera: first/third/top-down camera follows every frame.
# ---------------------------------------------------------------------------
runtime_path = 'runtime/src/main/kotlin/com/mobilegamestudio/runtime/RuntimeSceneViewport.kt'
runtime = read(runtime_path)

runtime = runtime.replace(
    '''    val playCharacter = document.objects.firstOrNull {
        it.enabled && it.component<CharacterControllerComponent>()?.enabled == true
    }''',
    '''    val playCharacter = document.objects.firstOrNull {
        it.enabled && "player" in it.tags && it.component<CharacterControllerComponent>()?.enabled == true
    } ?: document.objects.firstOrNull {
        it.enabled && it.component<CharacterControllerComponent>()?.enabled == true
    }''',
    1,
)

old_flags = '''    val firstPersonPlay = controlledVehicle == null && mode == EditorMode.PLAY &&
        playController?.cameraMode == CharacterCameraMode.FIRST_PERSON'''
new_flags = '''    val characterCameraPlay = controlledVehicle == null && mode == EditorMode.PLAY &&
        playCharacter != null && playController != null'''
runtime = replace_once(runtime, old_flags, new_flags, 'character camera flag')
runtime = runtime.replace(
    '        firstPersonPlay || controlledVehicle != null || (authoredPlayCamera != null && mode == EditorMode.PLAY) || terrainTopDownCamera -> null',
    '        characterCameraPlay || controlledVehicle != null || (authoredPlayCamera != null && mode == EditorMode.PLAY) || terrainTopDownCamera -> null',
    1,
)

old_character_camera = '''        if (firstPersonPlay) {
            val transform = playCharacter?.component<TransformComponent>()
            val yaw = Math.toRadians((transform?.rotationEulerDegrees?.y ?: 0f).toDouble())
            val pitch = Math.toRadians((transform?.rotationEulerDegrees?.x ?: 0f).toDouble())
            val eye = Float3(
                selectedTarget.x,
                selectedTarget.y + playController.cameraHeight,
                selectedTarget.z,
            )
            sceneCameraNode.transform = lookAt(
                eye = eye,
                target = Float3(
                    eye.x + (sin(yaw) * cos(pitch)).toFloat(),
                    eye.y - sin(pitch).toFloat(),
                    eye.z + (cos(yaw) * cos(pitch)).toFloat(),
                ),
                up = Float3(0f, 1f, 0f),
            )
        }'''
new_character_camera = '''        if (characterCameraPlay) {
            val transform = playCharacter?.component<TransformComponent>()
            if (transform != null && playController != null) {
                val pose = computeCharacterCameraPose(transform, playController)
                sceneCameraNode.transform = lookAt(
                    eye = Float3(pose.eye.x, pose.eye.y, pose.eye.z),
                    target = Float3(pose.target.x, pose.target.y, pose.target.z),
                    up = Float3(0f, 1f, 0f),
                )
            }
        }'''
runtime = replace_once(runtime, old_character_camera, new_character_camera, 'character camera side effect')

if 'internal data class RuntimeCharacterCameraPose' not in runtime:
    helper = '''

internal data class RuntimeCharacterCameraPose(
    val eye: com.mobilegamestudio.core.model.Vector3,
    val target: com.mobilegamestudio.core.model.Vector3,
)

internal fun computeCharacterCameraPose(
    transform: TransformComponent,
    controller: CharacterControllerComponent,
): RuntimeCharacterCameraPose {
    val position = transform.position
    val yaw = Math.toRadians(transform.rotationEulerDegrees.y.toDouble())
    val pitchDegrees = transform.rotationEulerDegrees.x.coerceIn(-78f, 78f)
    val pitch = Math.toRadians(pitchDegrees.toDouble())
    val forwardX = (sin(yaw) * cos(pitch)).toFloat()
    val forwardY = (-sin(pitch)).toFloat()
    val forwardZ = (cos(yaw) * cos(pitch)).toFloat()
    return when (controller.cameraMode) {
        CharacterCameraMode.FIRST_PERSON -> {
            val eye = com.mobilegamestudio.core.model.Vector3(
                position.x,
                position.y + controller.cameraHeight,
                position.z,
            )
            RuntimeCharacterCameraPose(
                eye = eye,
                target = com.mobilegamestudio.core.model.Vector3(
                    eye.x + forwardX,
                    eye.y + forwardY,
                    eye.z + forwardZ,
                ),
            )
        }
        CharacterCameraMode.THIRD_PERSON -> {
            val focus = com.mobilegamestudio.core.model.Vector3(
                position.x,
                position.y + controller.cameraHeight,
                position.z,
            )
            val distance = controller.cameraDistance.coerceIn(1.2f, 18f)
            val eye = com.mobilegamestudio.core.model.Vector3(
                focus.x - forwardX * distance,
                focus.y + distance * 0.22f - forwardY * distance * 0.45f,
                focus.z - forwardZ * distance,
            )
            RuntimeCharacterCameraPose(eye = eye, target = focus)
        }
        CharacterCameraMode.TOP_DOWN -> {
            val focus = com.mobilegamestudio.core.model.Vector3(
                position.x,
                position.y + controller.cameraHeight * 0.35f,
                position.z,
            )
            val distance = controller.cameraDistance.coerceAtLeast(4f)
            RuntimeCharacterCameraPose(
                eye = com.mobilegamestudio.core.model.Vector3(
                    focus.x - forwardX * distance * 0.22f,
                    focus.y + distance,
                    focus.z - forwardZ * distance * 0.22f,
                ),
                target = focus,
            )
        }
    }
}
'''
    marker = '\n\nprivate fun buildEditorGridNodes('
    if marker not in runtime:
        raise RuntimeError('runtime helper insertion marker missing')
    runtime = runtime.replace(marker, helper + marker, 1)
write(runtime_path, runtime)


# ---------------------------------------------------------------------------
# Starter world: link player, camera, Lua and NoCode into one validated flow.
# ---------------------------------------------------------------------------
viewmodel_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceViewModel.kt'
viewmodel = read(viewmodel_path)

old_tail = '''        applyDocumentEdit(updated)
        mutableState.update {
            it.copy(
                selectedObjectId = terrainId,
                terrainTool = it.terrainTool.copy(mode = TerrainBrushMode.RAISE, radius = 0.14f, strength = 0.34f),
                message = "Mundo jogável preparado. Molde o terreno, depois toque em Jogar para testar movimento, visão e pulo.",
            )
        }
    }

    fun updateTerrainTool('''
new_tail = '''        applyDocumentEdit(updated)
        val playerId = objects.firstOrNull {
            "player" in it.tags && it.component<CharacterControllerComponent>()?.enabled == true
        }?.id
        mutableState.update {
            it.copy(
                selectedObjectId = playerId ?: terrainId,
                terrainTool = it.terrainTool.copy(mode = TerrainBrushMode.RAISE, radius = 0.14f, strength = 0.34f),
                message = "Mundo jogável criado. Player, câmera, input, Lua e NoCode estão ligados para validação.",
            )
        }
        if (playerId != null) {
            createScriptForSelected("scripts/lua/starter", "player_controller", forceNew = true)
            createTouchGraph("visual-graphs/starter", "player_interaction", forceNew = true)
            addQuickBehavior(QuickBehavior.ROTATE_ON_TOUCH)
            mutableState.update {
                it.copy(
                    selectedObjectId = terrainId,
                    message = "Mundo jogável pronto: molde o terreno e use Jogar para testar movimento, visão, pulo, Lua e NoCode.",
                )
            }
        }
    }

    fun updateTerrainTool('''
viewmodel = replace_once(viewmodel, old_tail, new_tail, 'starter world logic links')
write(viewmodel_path, viewmodel)


# ---------------------------------------------------------------------------
# JVM camera validation.
# ---------------------------------------------------------------------------
test_path = Path('runtime/src/test/kotlin/com/mobilegamestudio/runtime/CharacterCameraRigTest.kt')
test_path.parent.mkdir(parents=True, exist_ok=True)
test_path.write_text('''package com.mobilegamestudio.runtime

import com.mobilegamestudio.core.model.CharacterCameraMode
import com.mobilegamestudio.core.model.CharacterControllerComponent
import com.mobilegamestudio.core.model.TransformComponent
import com.mobilegamestudio.core.model.Vector3
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class CharacterCameraRigTest {
    @Test
    fun thirdPersonCameraFollowsPlayerPosition() {
        val controller = CharacterControllerComponent(
            cameraMode = CharacterCameraMode.THIRD_PERSON,
            cameraDistance = 5f,
            cameraHeight = 1.6f,
        )
        val first = computeCharacterCameraPose(
            TransformComponent(position = Vector3(0f, 2f, 0f)),
            controller,
        )
        val moved = computeCharacterCameraPose(
            TransformComponent(position = Vector3(4f, 2f, -3f)),
            controller,
        )
        assertEquals(4f, moved.target.x - first.target.x, 0.0001f)
        assertEquals(-3f, moved.target.z - first.target.z, 0.0001f)
        assertEquals(4f, moved.eye.x - first.eye.x, 0.0001f)
        assertEquals(-3f, moved.eye.z - first.eye.z, 0.0001f)
    }

    @Test
    fun thirdPersonLookChangesCameraOrbitWithoutLosingFocus() {
        val controller = CharacterControllerComponent(
            cameraMode = CharacterCameraMode.THIRD_PERSON,
            cameraDistance = 4.8f,
            cameraHeight = 1.55f,
        )
        val forward = computeCharacterCameraPose(
            TransformComponent(position = Vector3(1f, 1f, 1f), rotationEulerDegrees = Vector3(0f, 0f, 0f)),
            controller,
        )
        val turned = computeCharacterCameraPose(
            TransformComponent(position = Vector3(1f, 1f, 1f), rotationEulerDegrees = Vector3(-12f, 90f, 0f)),
            controller,
        )
        assertEquals(forward.target, turned.target)
        assertTrue(kotlin.math.abs(forward.eye.x - turned.eye.x) > 1f)
        assertTrue(kotlin.math.abs(forward.eye.z - turned.eye.z) > 1f)
    }
}
''', encoding='utf-8')


# ---------------------------------------------------------------------------
# Documentation aligned with the implementation and validation gate.
# ---------------------------------------------------------------------------
doc_path = Path('docs/editor/EDITOR_COHESION_V3.md')
doc_path.parent.mkdir(parents=True, exist_ok=True)
doc_path.write_text('''# Editor Cohesion V3

Esta etapa transforma o editor principal em um conjunto de workspaces conectados, em vez de telas e botões isolados.

## Workspaces

- **3D:** hierarquia, viewport, criação, transformação, terreno e Inspector.
- **Código:** arquivos Lua vinculados a objetos e organizados em `res://scripts/lua`.
- **NoCode:** grafos visuais vinculados a objetos em `res://visual-graphs`.
- **Jogo:** inicia e encerra a execução da mesma cena editada.
- **Recursos:** arquivos, modelos, texturas, materiais, áudio e outros assets.

Os painéis laterais de Cena, Arquivos e Inspector não bloqueiam mais o viewport. Eles podem permanecer abertos enquanto a câmera é navegada.

## Controles do viewport

- Arrastar fora do controle de transformação orbita a câmera.
- Pinça altera somente o zoom da câmera.
- O controle inferior transforma somente no eixo X, Y ou Z selecionado.
- O gesto de transformação não é compartilhado com o gesto da câmera.
- Selecionar um objeto não reposiciona automaticamente a câmera.

## Mundo jogável

**Criar mundo jogável** prepara como uma unidade:

1. terreno editável;
2. sol com sombras;
3. câmera principal;
4. jogador com `CharacterController` e collider;
5. joystick de movimento;
6. botão de pulo;
7. script `scripts/lua/starter/player_controller.lua`;
8. grafo `visual-graphs/starter/player_interaction.graph.json`.

A câmera de terceira pessoa é calculada novamente a partir da transformação atual do jogador. Movimento e rotação da visão deslocam a câmera junto com o player.

## Validação mínima

1. Criar mundo jogável.
2. Navegar no viewport sem mover o objeto selecionado.
3. Mover um objeto somente pelo eixo escolhido.
4. Esculpir relevo e retornar para Navegar.
5. Iniciar o Play.
6. Mover o jogador pelo joystick.
7. Arrastar o lado direito para controlar a visão.
8. Pular.
9. Tocar no jogador para validar Lua e NoCode.
10. Parar o Play e confirmar que a cena editável foi preservada.
''', encoding='utf-8')

print('Editor Cohesion V3 applied')
