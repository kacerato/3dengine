import { useState } from 'react';
import { SceneViewport } from './SceneViewport';
import { useEditor } from './store';
import { componentOf, type EditorMode, type GameObject, type TransformComponent } from './types';

type IconName =
  | 'scene'
  | 'add'
  | 'cursor'
  | 'move'
  | 'rotate'
  | 'scale'
  | 'undo'
  | 'redo'
  | 'play'
  | 'stop'
  | 'save'
  | 'cube'
  | 'plane'
  | 'camera'
  | 'light'
  | 'eye'
  | 'trash'
  | 'close';

function Icon({ name }: { name: IconName }) {
  const paths: Record<IconName, string> = {
    scene: 'M4 5h16M4 12h16M4 19h16M7 3v4M12 10v4M17 17v4',
    add: 'M12 5v14M5 12h14',
    cursor: 'M5 3l13 9-6 2-2 6z',
    move: 'M12 2v20M2 12h20M12 2l-3 3M12 2l3 3M22 12l-3-3M22 12l-3 3M12 22l-3-3M12 22l3-3M2 12l3-3M2 12l3 3',
    rotate: 'M20 11a8 8 0 10-2 5M20 11V5m0 6h-6',
    scale: 'M5 5h6M5 5v6M19 19h-6m6 0v-6M5 19l6-6m8-8l-6 6',
    undo: 'M9 7H4v-5M4 7a9 9 0 111 8',
    redo: 'M15 7h5v-5M20 7a9 9 0 10-1 8',
    play: 'M8 5l11 7-11 7z',
    stop: 'M7 7h10v10H7z',
    save: 'M5 4h12l2 2v14H5zM8 4v6h8V4M8 16h8',
    cube: 'M12 3l8 4.5v9L12 21l-8-4.5v-9zM4 7.5l8 4.5 8-4.5M12 12v9',
    plane: 'M3 15l9-9 9 9-9 5z',
    camera: 'M4 7h4l2-2h4l2 2h4v12H4zM12 10a3 3 0 100 6 3 3 0 000-6z',
    light: 'M9 18h6M10 22h4M8 13a6 6 0 118 0c-1 1-2 2-2 4h-4c0-2-1-3-2-4z',
    eye: 'M2 12s4-6 10-6 10 6 10 6-4 6-10 6S2 12 2 12zm10-3a3 3 0 100 6 3 3 0 000-6z',
    trash: 'M5 7h14M9 7V4h6v3M8 10v8M12 10v8M16 10v8M7 7l1 14h8l1-14',
    close: 'M6 6l12 12M18 6L6 18',
  };
  return (
    <svg viewBox="0 0 24 24" aria-hidden="true">
      <path d={paths[name]} fill="none" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function IconButton({
  icon,
  label,
  active = false,
  disabled = false,
  onClick,
}: {
  icon: IconName;
  label: string;
  active?: boolean;
  disabled?: boolean;
  onClick(): void;
}) {
  return (
    <button
      type="button"
      className={`icon-button ${active ? 'is-active' : ''}`}
      aria-label={label}
      title={label}
      disabled={disabled}
      onClick={onClick}
    >
      <Icon name={icon} />
    </button>
  );
}

const objectKind = (object: GameObject) => {
  if (componentOf(object, 'camera')) return 'Câmeras';
  if (componentOf(object, 'directional-light')) return 'Iluminação';
  if (componentOf(object, 'mesh-renderer')) return 'Geometria';
  return 'Outros';
};

function HierarchyPanel({ onClose }: { onClose(): void }) {
  const { snapshot, dispatch } = useEditor();
  if (!snapshot) return null;

  const groupedObjects = new Map<string, GameObject[]>();
  snapshot.scene.objects.forEach((object) => {
    const key = objectKind(object);
    groupedObjects.set(key, [...(groupedObjects.get(key) ?? []), object]);
  });

  return (
    <aside className="dock-panel hierarchy-panel">
      <header className="dock-header">
        <div>
          <strong>Cena</strong>
          <span>{snapshot.scene.objects.length} objetos</span>
        </div>
        <IconButton icon="close" label="Fechar painel" onClick={onClose} />
      </header>
      <div className="dock-scroll">
        {[...groupedObjects.entries()].map(([group, objects]) => (
          <section className="tree-group" key={group}>
            <h3>{group}</h3>
            {objects.map((object) => (
              <div
                className={`tree-row ${snapshot.selectedObjectId === object.id ? 'is-selected' : ''}`}
                key={object.id}
              >
                <button
                  type="button"
                  className="tree-select"
                  onClick={() => void dispatch({ type: 'select-object', objectId: object.id })}
                >
                  <span className="tree-dot" />
                  <span>{object.name}</span>
                </button>
                <button
                  type="button"
                  className="row-action"
                  aria-label={object.enabled ? 'Ocultar objeto' : 'Mostrar objeto'}
                  onClick={() => void dispatch({ type: 'toggle-object', objectId: object.id })}
                >
                  <Icon name="eye" />
                </button>
              </div>
            ))}
          </section>
        ))}
      </div>
    </aside>
  );
}

function CreatePanel({ onClose }: { onClose(): void }) {
  const { dispatch } = useEditor();
  const actions = [
    { icon: 'cube' as const, label: 'Cubo', command: { type: 'add-primitive', primitive: 'CUBE' } as const },
    { icon: 'plane' as const, label: 'Plano', command: { type: 'add-primitive', primitive: 'PLANE' } as const },
    { icon: 'camera' as const, label: 'Câmera', command: { type: 'add-camera' } as const },
    { icon: 'light' as const, label: 'Luz direcional', command: { type: 'add-directional-light' } as const },
  ];
  return (
    <aside className="dock-panel create-panel">
      <header className="dock-header">
        <div>
          <strong>Criar</strong>
          <span>Base funcional da cena</span>
        </div>
        <IconButton icon="close" label="Fechar painel" onClick={onClose} />
      </header>
      <div className="create-grid">
        {actions.map((action) => (
          <button type="button" className="create-card" key={action.label} onClick={() => void dispatch(action.command)}>
            <Icon name={action.icon} />
            <span>{action.label}</span>
          </button>
        ))}
      </div>
    </aside>
  );
}

function NumberField({
  axis,
  value,
  onCommit,
}: {
  axis: 'x' | 'y' | 'z';
  value: number;
  onCommit(value: number): void;
}) {
  return (
    <label className={`number-field axis-${axis}`}>
      <span>{axis.toUpperCase()}</span>
      <input
        type="number"
        inputMode="decimal"
        step="0.1"
        value={Number.isFinite(value) ? Number(value.toFixed(3)) : 0}
        onChange={(event) => {
          const next = Number(event.currentTarget.value);
          if (Number.isFinite(next)) onCommit(next);
        }}
      />
    </label>
  );
}

function TransformRow({
  label,
  values,
  onChange,
}: {
  label: string;
  values: { x: number; y: number; z: number };
  onChange(axis: 'x' | 'y' | 'z', value: number): void;
}) {
  return (
    <div className="property-block">
      <span className="property-label">{label}</span>
      <div className="axis-grid">
        {(['x', 'y', 'z'] as const).map((axis) => (
          <NumberField key={axis} axis={axis} value={values[axis]} onCommit={(value) => onChange(axis, value)} />
        ))}
      </div>
    </div>
  );
}

function InspectorPanel() {
  const { snapshot, dispatch } = useEditor();
  if (!snapshot || snapshot.playing) return null;
  const object = snapshot.scene.objects.find((candidate) => candidate.id === snapshot.selectedObjectId);
  const transform = object ? componentOf(object, 'transform') : undefined;

  const patchTransform = (
    section: 'position' | 'rotationEulerDegrees' | 'scale',
    axis: 'x' | 'y' | 'z',
    value: number,
  ) => {
    if (!object || !transform) return;
    const next: TransformComponent = {
      ...transform,
      [section]: { ...transform[section], [axis]: value },
    };
    void dispatch({ type: 'update-transform', objectId: object.id, transform: next });
  };

  return (
    <aside className="inspector-panel">
      <header className="inspector-header">
        <span>Inspector</span>
        <strong>{object?.name ?? 'Nada selecionado'}</strong>
      </header>
      {object && transform ? (
        <div className="inspector-scroll">
          <label className="name-field">
            <span>Nome</span>
            <input
              value={object.name}
              onChange={(event) => void dispatch({ type: 'rename-object', objectId: object.id, name: event.target.value })}
            />
          </label>
          <section className="inspector-section">
            <h3>Transform</h3>
            <TransformRow label="Posição" values={transform.position} onChange={(axis, value) => patchTransform('position', axis, value)} />
            <TransformRow label="Rotação" values={transform.rotationEulerDegrees} onChange={(axis, value) => patchTransform('rotationEulerDegrees', axis, value)} />
            <TransformRow label="Escala" values={transform.scale} onChange={(axis, value) => patchTransform('scale', axis, value)} />
          </section>
          <button type="button" className="danger-button" onClick={() => void dispatch({ type: 'delete-object', objectId: object.id })}>
            <Icon name="trash" />
            Remover objeto
          </button>
        </div>
      ) : (
        <div className="empty-panel">Toque em um objeto no viewport ou na hierarquia.</div>
      )}
    </aside>
  );
}

const modeButtons: Array<{ mode: Exclude<EditorMode, 'play'>; icon: IconName; label: string }> = [
  { mode: 'select', icon: 'cursor', label: 'Selecionar' },
  { mode: 'move', icon: 'move', label: 'Mover' },
  { mode: 'rotate', icon: 'rotate', label: 'Rotacionar' },
  { mode: 'scale', icon: 'scale', label: 'Escalar' },
];

export function EditorShell() {
  const { snapshot, busy, error, dispatch, save, play, stop, undo, redo } = useEditor();
  const [panel, setPanel] = useState<'scene' | 'create' | null>('scene');

  if (!snapshot) return <main className="loading-screen">Abrindo editor…</main>;

  if (snapshot.playing) {
    return (
      <main className="play-shell">
        <SceneViewport />
        <div className="play-toolbar">
          <span>PLAY</span>
          <button type="button" onClick={() => void stop()}><Icon name="stop" />Parar</button>
        </div>
      </main>
    );
  }

  return (
    <main className="editor-shell">
      <header className="topbar">
        <div className="brand-block">
          <span className="brand-mark"><Icon name="cube" /></span>
          <div>
            <strong>{snapshot.projectName}</strong>
            <span>{snapshot.scene.name}{snapshot.dirty ? ' • não salvo' : ''}</span>
          </div>
        </div>
        <div className="tool-group">
          {modeButtons.map((item) => (
            <IconButton
              key={item.mode}
              icon={item.icon}
              label={item.label}
              active={snapshot.mode === item.mode}
              onClick={() => void dispatch({ type: 'set-mode', mode: item.mode })}
            />
          ))}
        </div>
        <div className="topbar-actions">
          <IconButton icon="undo" label="Desfazer" disabled={!snapshot.canUndo || busy} onClick={() => void undo()} />
          <IconButton icon="redo" label="Refazer" disabled={!snapshot.canRedo || busy} onClick={() => void redo()} />
          <button type="button" className="play-button" disabled={busy} onClick={() => void play()}>
            <Icon name="play" />
            Play
          </button>
          <IconButton icon="save" label="Salvar" disabled={!snapshot.dirty || busy} onClick={() => void save()} />
        </div>
      </header>

      <section className="workspace-grid">
        <nav className="side-rail" aria-label="Painéis do editor">
          <IconButton icon="scene" label="Cena" active={panel === 'scene'} onClick={() => setPanel(panel === 'scene' ? null : 'scene')} />
          <IconButton icon="add" label="Criar objeto" active={panel === 'create'} onClick={() => setPanel(panel === 'create' ? null : 'create')} />
        </nav>
        {panel === 'scene' && <HierarchyPanel onClose={() => setPanel(null)} />}
        {panel === 'create' && <CreatePanel onClose={() => setPanel(null)} />}
        <section className="viewport-stage">
          <SceneViewport />
          <div className="viewport-chip">
            <span>{snapshot.mode}</span>
            <strong>{snapshot.selectedObjectId ? snapshot.scene.objects.find((object) => object.id === snapshot.selectedObjectId)?.name : 'Sem seleção'}</strong>
          </div>
        </section>
        <InspectorPanel />
      </section>

      <footer className="statusbar">
        <span>{snapshot.scene.objects.length} objetos</span>
        <span>Rev. {snapshot.scene.metadata.revision}</span>
        <span className={error ? 'status-error' : ''}>{error ?? (busy ? 'Processando…' : 'Pronto')}</span>
      </footer>
    </main>
  );
}
