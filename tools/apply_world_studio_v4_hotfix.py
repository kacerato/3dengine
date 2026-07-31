from pathlib import Path
import re


def normalize_adjacent(path: str, exact_line: str) -> None:
    file_path = Path(path)
    lines = file_path.read_text(encoding='utf-8').splitlines(keepends=True)
    output = []
    previous_match = False
    for line in lines:
        current_match = line.strip() == exact_line
        if current_match and previous_match:
            continue
        output.append(line)
        previous_match = current_match
    file_path.write_text(''.join(output), encoding='utf-8')


def replace_block(path: str, pattern: str, replacement: str, label: str) -> None:
    file_path = Path(path)
    text = file_path.read_text(encoding='utf-8')
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE | re.DOTALL)
    if count != 1:
        raise RuntimeError(f'{label}: expected one block, found {count}')
    file_path.write_text(updated, encoding='utf-8')


shell_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/GodotCompactEditorShell.kt'
normalize_adjacent(shell_path, 'onCreatePlayableWorld: () -> Unit,')
replace_block(
    shell_path,
    r'''(?P<indent>\s*)onCreateFlatTerrain = onCreateFlatTerrain,\n.*?(?P=indent)onAssignTerrainTexture = onAssignTerrainTexture,''',
    '''\g<indent>onCreateFlatTerrain = onCreateFlatTerrain,
\g<indent>onCreatePlayableWorld = onCreatePlayableWorld,
\g<indent>onCreateWorldLayer = onCreateWorldLayer,
\g<indent>onSelectWorldLayer = onSelectWorldLayer,
\g<indent>onRenameWorldLayer = onRenameWorldLayer,
\g<indent>onMoveWorldLayer = onMoveWorldLayer,
\g<indent>onToggleWorldLayerVisibility = onToggleWorldLayerVisibility,
\g<indent>onToggleWorldLayerLock = onToggleWorldLayerLock,
\g<indent>onToggleWorldLayerSolo = onToggleWorldLayerSolo,
\g<indent>onAssignSelectedToWorldLayer = onAssignSelectedToWorldLayer,
\g<indent>onPlay = onTogglePreview,
\g<indent>onAssignTerrainTexture = onAssignTerrainTexture,''',
    'Godot shell World Studio callback block',
)

screen_path = 'editor/src/main/kotlin/com/mobilegamestudio/editor/WorkspaceScreen.kt'
replace_block(
    screen_path,
    r'''(?P<indent>\s*)onCreateFlatTerrain = viewModel::createFlatTerrain,\n.*?(?P=indent)onAssignTerrainTexture = viewModel::assignTerrainTexture,''',
    '''\g<indent>onCreateFlatTerrain = viewModel::createFlatTerrain,
\g<indent>onCreatePlayableWorld = viewModel::createPlayableWorld,
\g<indent>onCreateWorldLayer = viewModel::createWorldLayer,
\g<indent>onSelectWorldLayer = viewModel::selectWorldLayer,
\g<indent>onRenameWorldLayer = viewModel::renameWorldLayer,
\g<indent>onMoveWorldLayer = viewModel::moveWorldLayer,
\g<indent>onToggleWorldLayerVisibility = viewModel::toggleWorldLayerVisibility,
\g<indent>onToggleWorldLayerLock = viewModel::toggleWorldLayerLock,
\g<indent>onToggleWorldLayerSolo = viewModel::toggleWorldLayerSolo,
\g<indent>onAssignSelectedToWorldLayer = viewModel::assignSelectedObjectToWorldLayer,
\g<indent>onAssignTerrainTexture = viewModel::assignTerrainTexture,''',
    'Workspace screen callback block',
)

# Guard against generated migrations leaving duplicate signature lines in any V4 entry point.
for source_path in (
    shell_path,
    'editor/src/main/kotlin/com/mobilegamestudio/editor/WorldStudioWorkspaceV3.kt',
):
    for line in (
        'onCreatePlayableWorld: () -> Unit,',
        'onCreateWorldLayer: (String, WorldLayerKind) -> Unit,',
        'onSelectWorldLayer: (String) -> Unit,',
        'onRenameWorldLayer: (String, String) -> Unit,',
        'onMoveWorldLayer: (String, Int) -> Unit,',
        'onToggleWorldLayerVisibility: (String) -> Unit,',
        'onToggleWorldLayerLock: (String) -> Unit,',
        'onToggleWorldLayerSolo: (String) -> Unit,',
        'onAssignSelectedToWorldLayer: (String) -> Unit,',
    ):
        normalize_adjacent(source_path, line)

print('World Studio V4 callback hotfix applied')
