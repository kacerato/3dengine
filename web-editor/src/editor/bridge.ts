import type { EditorCommand, EditorSnapshot, GameObject, SceneDocument } from './types';

type NativeEditorBridge = {
  getSnapshot(): string;
  dispatch(commandJson: string): string;
  save(): string;
  startPlay(): string;
  stopPlay(): string;
  undo(): string;
  redo(): string;
};

declare global {
  interface Window {
    MobileGameStudioEditor?: NativeEditorBridge;
    __MGS_RECEIVE_SNAPSHOT__?: (snapshotJson: string) => void;
  }
}

const demoScene: SceneDocument = {
  schemaVersion: 1,
  sceneId: 'demo-scene',
  name: 'Cena principal',
  rootObjects: ['camera', 'sun', 'cube'],
  objects: [
    {
      id: 'camera',
      name: 'Main Camera',
      enabled: true,
      children: [],
      tags: ['camera'],
      components: [
        {
          type: 'transform',
          componentId: 'camera-transform',
          enabled: true,
          position: { x: 6, y: 5, z: 8 },
          rotationEulerDegrees: { x: -22, y: 36, z: 0 },
          scale: { x: 1, y: 1, z: 1 },
        },
        {
          type: 'camera',
          componentId: 'camera-component',
          enabled: true,
          fieldOfViewDegrees: 60,
          nearPlane: 0.05,
          farPlane: 500,
          isMain: true,
        },
      ],
    },
    {
      id: 'sun',
      name: 'Directional Light',
      enabled: true,
      children: [],
      tags: ['light'],
      components: [
        {
          type: 'transform',
          componentId: 'sun-transform',
          enabled: true,
          position: { x: 0, y: 8, z: 0 },
          rotationEulerDegrees: { x: -45, y: 35, z: 0 },
          scale: { x: 1, y: 1, z: 1 },
        },
        {
          type: 'directional-light',
          componentId: 'sun-component',
          enabled: true,
          intensityLux: 75_000,
          colorArgb: 0xffffffff,
          castShadows: true,
        },
      ],
    },
    {
      id: 'cube',
      name: 'Cubo',
      enabled: true,
      children: [],
      tags: ['geometry'],
      components: [
        {
          type: 'transform',
          componentId: 'cube-transform',
          enabled: true,
          position: { x: 0, y: 0.5, z: 0 },
          rotationEulerDegrees: { x: 0, y: 0, z: 0 },
          scale: { x: 1, y: 1, z: 1 },
        },
        {
          type: 'mesh-renderer',
          componentId: 'cube-renderer',
          enabled: true,
          primitive: 'CUBE',
          assetId: null,
          colorArgb: 0xff7d91a8,
          castShadows: true,
        },
      ],
    },
  ],
  editorSettings: {
    cameraOrbit: { x: 6, y: 5, z: 8 },
    cameraTarget: { x: 0, y: 0, z: 0 },
    selectedObjectId: 'cube',
    gridVisible: true,
  },
  metadata: {
    revision: 1,
    createdAtEpochMillis: Date.now(),
    updatedAtEpochMillis: Date.now(),
  },
};

let fallbackSnapshot: EditorSnapshot = {
  projectName: 'Projeto de validação',
  scene: demoScene,
  selectedObjectId: 'cube',
  mode: 'move',
  dirty: false,
  canUndo: false,
  canRedo: false,
  playing: false,
};

let latestNativeSnapshot: EditorSnapshot | null = null;
const snapshotListeners = new Set<(snapshot: EditorSnapshot) => void>();

const publishSnapshot = (snapshot: EditorSnapshot) => {
  latestNativeSnapshot = snapshot;
  snapshotListeners.forEach((listener) => listener(snapshot));
};

window.__MGS_RECEIVE_SNAPSHOT__ = (snapshotJson: string) => {
  publishSnapshot(JSON.parse(snapshotJson) as EditorSnapshot);
};

const parseResult = <T>(raw: string): T => {
  const parsed = JSON.parse(raw) as { ok?: boolean; value?: T; error?: string } | T;
  if (typeof parsed === 'object' && parsed !== null && 'ok' in parsed) {
    if (!parsed.ok) throw new Error(parsed.error ?? 'Falha no bridge nativo.');
    return parsed.value as T;
  }
  return parsed as T;
};

const nextId = (prefix: string) => `${prefix}-${Date.now()}-${Math.random().toString(16).slice(2)}`;

const addFallbackObject = (object: GameObject): EditorSnapshot => {
  fallbackSnapshot = {
    ...fallbackSnapshot,
    selectedObjectId: object.id,
    dirty: true,
    canUndo: true,
    scene: {
      ...fallbackSnapshot.scene,
      objects: [...fallbackSnapshot.scene.objects, object],
      rootObjects: [...fallbackSnapshot.scene.rootObjects, object.id],
    },
  };
  return fallbackSnapshot;
};

const mutateFallback = (command: EditorCommand): EditorSnapshot => {
  if (command.type === 'select-object') {
    fallbackSnapshot = { ...fallbackSnapshot, selectedObjectId: command.objectId };
  } else if (command.type === 'set-mode') {
    fallbackSnapshot = { ...fallbackSnapshot, mode: command.mode };
  } else if (command.type === 'update-transform') {
    fallbackSnapshot = {
      ...fallbackSnapshot,
      dirty: true,
      canUndo: true,
      scene: {
        ...fallbackSnapshot.scene,
        objects: fallbackSnapshot.scene.objects.map((object) =>
          object.id !== command.objectId
            ? object
            : {
                ...object,
                components: object.components.map((component) =>
                  component.type === 'transform' ? command.transform : component,
                ),
              },
        ),
      },
    };
  } else if (command.type === 'add-primitive') {
    const id = nextId(command.primitive.toLowerCase());
    return addFallbackObject({
      id,
      name: command.primitive === 'CUBE' ? 'Novo cubo' : 'Novo plano',
      enabled: true,
      children: [],
      tags: ['geometry'],
      components: [
        {
          type: 'transform',
          componentId: `${id}-transform`,
          enabled: true,
          position: { x: 0, y: command.primitive === 'CUBE' ? 0.5 : 0, z: 0 },
          rotationEulerDegrees: { x: 0, y: 0, z: 0 },
          scale: command.primitive === 'PLANE' ? { x: 6, y: 1, z: 6 } : { x: 1, y: 1, z: 1 },
        },
        {
          type: 'mesh-renderer',
          componentId: `${id}-renderer`,
          enabled: true,
          primitive: command.primitive,
          assetId: null,
          colorArgb: 0xff7d91a8,
          castShadows: true,
        },
      ],
    });
  } else if (command.type === 'rename-object') {
    fallbackSnapshot = {
      ...fallbackSnapshot,
      dirty: true,
      scene: {
        ...fallbackSnapshot.scene,
        objects: fallbackSnapshot.scene.objects.map((object) =>
          object.id === command.objectId ? { ...object, name: command.name } : object,
        ),
      },
    };
  } else if (command.type === 'toggle-object') {
    fallbackSnapshot = {
      ...fallbackSnapshot,
      dirty: true,
      scene: {
        ...fallbackSnapshot.scene,
        objects: fallbackSnapshot.scene.objects.map((object) =>
          object.id === command.objectId ? { ...object, enabled: !object.enabled } : object,
        ),
      },
    };
  } else if (command.type === 'delete-object') {
    fallbackSnapshot = {
      ...fallbackSnapshot,
      selectedObjectId: null,
      dirty: true,
      scene: {
        ...fallbackSnapshot.scene,
        objects: fallbackSnapshot.scene.objects.filter((object) => object.id !== command.objectId),
        rootObjects: fallbackSnapshot.scene.rootObjects.filter((id) => id !== command.objectId),
      },
    };
  }
  publishSnapshot(fallbackSnapshot);
  return fallbackSnapshot;
};

const readNativeSnapshot = (): EditorSnapshot => {
  const native = window.MobileGameStudioEditor;
  if (!native) return fallbackSnapshot;
  const snapshot = parseResult<EditorSnapshot>(native.getSnapshot());
  publishSnapshot(snapshot);
  return snapshot;
};

const afterNativeAction = async (call: () => string): Promise<EditorSnapshot> => {
  parseResult<void>(call());
  await new Promise((resolve) => window.setTimeout(resolve, 24));
  return latestNativeSnapshot ?? readNativeSnapshot();
};

export const editorBridge = {
  async getSnapshot(): Promise<EditorSnapshot> {
    return window.MobileGameStudioEditor ? readNativeSnapshot() : fallbackSnapshot;
  },

  subscribe(listener: (snapshot: EditorSnapshot) => void): () => void {
    snapshotListeners.add(listener);
    if (latestNativeSnapshot) listener(latestNativeSnapshot);
    return () => snapshotListeners.delete(listener);
  },

  async dispatch(command: EditorCommand): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native
      ? afterNativeAction(() => native.dispatch(JSON.stringify(command)))
      : mutateFallback(command);
  },

  async save(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    if (native) return afterNativeAction(native.save.bind(native));
    fallbackSnapshot = { ...fallbackSnapshot, dirty: false };
    publishSnapshot(fallbackSnapshot);
    return fallbackSnapshot;
  },

  async startPlay(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    if (native) return afterNativeAction(native.startPlay.bind(native));
    fallbackSnapshot = { ...fallbackSnapshot, playing: true, mode: 'play' };
    publishSnapshot(fallbackSnapshot);
    return fallbackSnapshot;
  },

  async stopPlay(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    if (native) return afterNativeAction(native.stopPlay.bind(native));
    fallbackSnapshot = { ...fallbackSnapshot, playing: false, mode: 'move' };
    publishSnapshot(fallbackSnapshot);
    return fallbackSnapshot;
  },

  async undo(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native ? afterNativeAction(native.undo.bind(native)) : fallbackSnapshot;
  },

  async redo(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native ? afterNativeAction(native.redo.bind(native)) : fallbackSnapshot;
  },
};
