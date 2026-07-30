export type Vector3Value = { x: number; y: number; z: number };

export type TransformComponent = {
  type: 'transform';
  componentId: string;
  enabled: boolean;
  position: Vector3Value;
  rotationEulerDegrees: Vector3Value;
  scale: Vector3Value;
};

export type MeshRendererComponent = {
  type: 'mesh-renderer';
  componentId: string;
  enabled: boolean;
  primitive?: 'CUBE' | 'PLANE' | null;
  assetId?: string | null;
  colorArgb: number;
  castShadows: boolean;
};

export type CameraComponent = {
  type: 'camera';
  componentId: string;
  enabled: boolean;
  fieldOfViewDegrees: number;
  nearPlane: number;
  farPlane: number;
  isMain: boolean;
};

export type DirectionalLightComponent = {
  type: 'directional-light';
  componentId: string;
  enabled: boolean;
  intensityLux: number;
  colorArgb: number;
  castShadows: boolean;
};

export type SceneComponent =
  | TransformComponent
  | MeshRendererComponent
  | CameraComponent
  | DirectionalLightComponent
  | ({ type: string; componentId: string; enabled: boolean } & Record<string, unknown>);

export type GameObject = {
  id: string;
  name: string;
  enabled: boolean;
  parentId?: string | null;
  children: string[];
  tags: string[];
  components: SceneComponent[];
};

export type SceneDocument = {
  schemaVersion: number;
  sceneId: string;
  name: string;
  rootObjects: string[];
  objects: GameObject[];
  editorSettings: {
    cameraOrbit: Vector3Value;
    cameraTarget: Vector3Value;
    selectedObjectId?: string | null;
    gridVisible: boolean;
  };
  metadata: {
    revision: number;
    createdAtEpochMillis: number;
    updatedAtEpochMillis: number;
  };
};

export type EditorMode = 'select' | 'move' | 'rotate' | 'scale' | 'play';

export type EditorSnapshot = {
  projectName: string;
  scene: SceneDocument;
  selectedObjectId: string | null;
  mode: EditorMode;
  dirty: boolean;
  canUndo: boolean;
  canRedo: boolean;
  playing: boolean;
};

export type EditorCommand =
  | { type: 'select-object'; objectId: string | null }
  | { type: 'set-mode'; mode: Exclude<EditorMode, 'play'> }
  | { type: 'update-transform'; objectId: string; transform: TransformComponent }
  | { type: 'add-primitive'; primitive: 'CUBE' | 'PLANE' }
  | { type: 'add-camera' }
  | { type: 'add-directional-light' }
  | { type: 'rename-object'; objectId: string; name: string }
  | { type: 'toggle-object'; objectId: string }
  | { type: 'delete-object'; objectId: string }
  | { type: 'set-editor-camera'; orbit: Vector3Value; target: Vector3Value };

export const componentOf = <T extends SceneComponent['type']>(
  object: GameObject,
  type: T,
): Extract<SceneComponent, { type: T }> | undefined =>
  object.components.find((component) => component.type === type) as
    | Extract<SceneComponent, { type: T }>
    | undefined;
