import type { EditorCommand, EditorSnapshot, SceneDocument } from './types';

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

const parseResult = <T>(raw: string): T => {
  const parsed = JSON.parse(raw) as { ok?: boolean; value?: T; error?: string } | T;
  if (typeof parsed === 'object' && parsed !== null && 'ok' in parsed) {
    if (!parsed.ok) throw new Error(parsed.error ?? 'Falha no bridge nativo.');
    return parsed.value as T;
  }
  return parsed as T;
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
  }
  return fallbackSnapshot;
};

export const editorBridge = {
  async getSnapshot(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native ? parseResult<EditorSnapshot>(native.getSnapshot()) : fallbackSnapshot;
  },

  async dispatch(command: EditorCommand): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native
      ? parseResult<EditorSnapshot>(native.dispatch(JSON.stringify(command)))
      : mutateFallback(command);
  },

  async save(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    if (native) return parseResult<EditorSnapshot>(native.save());
    fallbackSnapshot = { ...fallbackSnapshot, dirty: false };
    return fallbackSnapshot;
  },

  async startPlay(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    if (native) return parseResult<EditorSnapshot>(native.startPlay());
    fallbackSnapshot = { ...fallbackSnapshot, playing: true, mode: 'play' };
    return fallbackSnapshot;
  },

  async stopPlay(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    if (native) return parseResult<EditorSnapshot>(native.stopPlay());
    fallbackSnapshot = { ...fallbackSnapshot, playing: false, mode: 'move' };
    return fallbackSnapshot;
  },

  async undo(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native ? parseResult<EditorSnapshot>(native.undo()) : fallbackSnapshot;
  },

  async redo(): Promise<EditorSnapshot> {
    const native = window.MobileGameStudioEditor;
    return native ? parseResult<EditorSnapshot>(native.redo()) : fallbackSnapshot;
  },
};
