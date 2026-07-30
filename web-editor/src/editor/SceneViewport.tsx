import { useEffect, useRef } from 'react';
import * as THREE from 'three';
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js';
import { TransformControls } from 'three/examples/jsm/controls/TransformControls.js';
import { useEditor } from './store';
import { componentOf, type GameObject, type TransformComponent } from './types';

const toColor = (argb: number): THREE.Color => {
  const unsigned = argb >>> 0;
  return new THREE.Color(
    ((unsigned >> 16) & 0xff) / 255,
    ((unsigned >> 8) & 0xff) / 255,
    (unsigned & 0xff) / 255,
  );
};

const applyTransform = (target: THREE.Object3D, transform: TransformComponent) => {
  target.position.set(transform.position.x, transform.position.y, transform.position.z);
  target.rotation.set(
    THREE.MathUtils.degToRad(transform.rotationEulerDegrees.x),
    THREE.MathUtils.degToRad(transform.rotationEulerDegrees.y),
    THREE.MathUtils.degToRad(transform.rotationEulerDegrees.z),
    'YXZ',
  );
  target.scale.set(transform.scale.x, transform.scale.y, transform.scale.z);
};

const serializeTransform = (object: THREE.Object3D, previous: TransformComponent): TransformComponent => ({
  ...previous,
  position: { x: object.position.x, y: object.position.y, z: object.position.z },
  rotationEulerDegrees: {
    x: THREE.MathUtils.radToDeg(object.rotation.x),
    y: THREE.MathUtils.radToDeg(object.rotation.y),
    z: THREE.MathUtils.radToDeg(object.rotation.z),
  },
  scale: { x: object.scale.x, y: object.scale.y, z: object.scale.z },
});

const buildRenderable = (object: GameObject): THREE.Object3D | null => {
  const transform = componentOf(object, 'transform');
  if (!transform || !object.enabled) return null;

  const root = new THREE.Group();
  root.name = object.name;
  root.userData.objectId = object.id;
  applyTransform(root, transform);

  const renderer = componentOf(object, 'mesh-renderer');
  if (renderer?.enabled && renderer.primitive) {
    const geometry = renderer.primitive === 'PLANE'
      ? new THREE.PlaneGeometry(1, 1, 1, 1).rotateX(-Math.PI / 2)
      : new THREE.BoxGeometry(1, 1, 1);
    const material = new THREE.MeshStandardMaterial({
      color: toColor(renderer.colorArgb),
      roughness: 0.72,
      metalness: 0.04,
    });
    const mesh = new THREE.Mesh(geometry, material);
    mesh.castShadow = renderer.castShadows;
    mesh.receiveShadow = true;
    mesh.userData.objectId = object.id;
    root.add(mesh);
  }

  const cameraComponent = componentOf(object, 'camera');
  if (cameraComponent?.enabled) {
    const marker = new THREE.CameraHelper(
      new THREE.PerspectiveCamera(
        cameraComponent.fieldOfViewDegrees,
        16 / 9,
        cameraComponent.nearPlane,
        Math.min(cameraComponent.farPlane, 30),
      ),
    );
    marker.material.transparent = true;
    marker.material.opacity = 0.55;
    marker.userData.objectId = object.id;
    root.add(marker);
  }

  const lightComponent = componentOf(object, 'directional-light');
  if (lightComponent?.enabled) {
    const light = new THREE.DirectionalLight(
      toColor(lightComponent.colorArgb),
      Math.max(0.2, lightComponent.intensityLux / 75_000),
    );
    light.castShadow = lightComponent.castShadows;
    light.shadow.mapSize.set(1024, 1024);
    light.position.set(0, 0, 0);
    light.target.position.set(0, -1, -1);
    light.userData.objectId = object.id;
    root.add(light, light.target);

    const helper = new THREE.DirectionalLightHelper(light, 0.7);
    helper.userData.objectId = object.id;
    root.add(helper);
  }

  return root;
};

const disposeObject = (object: THREE.Object3D) => {
  object.traverse((child) => {
    const mesh = child as THREE.Mesh;
    mesh.geometry?.dispose?.();
    const materials = Array.isArray(mesh.material) ? mesh.material : mesh.material ? [mesh.material] : [];
    materials.forEach((material) => material.dispose());
  });
};

export function SceneViewport() {
  const containerRef = useRef<HTMLDivElement>(null);
  const { snapshot, dispatch } = useEditor();
  const snapshotRef = useRef(snapshot);
  const rendererRef = useRef<THREE.WebGLRenderer | null>(null);
  const sceneRef = useRef<THREE.Scene | null>(null);
  const cameraRef = useRef<THREE.PerspectiveCamera | null>(null);
  const orbitRef = useRef<OrbitControls | null>(null);
  const transformRef = useRef<TransformControls | null>(null);
  const contentRootRef = useRef(new THREE.Group());
  const objectMapRef = useRef(new Map<string, THREE.Object3D>());
  const initializedCameraRef = useRef(false);

  snapshotRef.current = snapshot;

  useEffect(() => {
    const container = containerRef.current;
    if (!container) return;

    const scene = new THREE.Scene();
    scene.background = new THREE.Color('#171a20');
    scene.fog = new THREE.Fog('#171a20', 45, 150);

    const camera = new THREE.PerspectiveCamera(58, 1, 0.03, 800);
    camera.position.set(6, 5, 8);

    const renderer = new THREE.WebGLRenderer({ antialias: true, powerPreference: 'high-performance' });
    renderer.setPixelRatio(Math.min(window.devicePixelRatio, 1.75));
    renderer.shadowMap.enabled = true;
    renderer.shadowMap.type = THREE.PCFSoftShadowMap;
    renderer.outputColorSpace = THREE.SRGBColorSpace;
    renderer.toneMapping = THREE.ACESFilmicToneMapping;
    renderer.toneMappingExposure = 1.05;
    container.appendChild(renderer.domElement);

    const orbit = new OrbitControls(camera, renderer.domElement);
    orbit.enableDamping = true;
    orbit.dampingFactor = 0.08;
    orbit.screenSpacePanning = true;
    orbit.minDistance = 0.25;
    orbit.maxDistance = 500;
    orbit.mouseButtons.LEFT = THREE.MOUSE.ROTATE;
    orbit.mouseButtons.RIGHT = THREE.MOUSE.PAN;
    orbit.touches.ONE = THREE.TOUCH.ROTATE;
    orbit.touches.TWO = THREE.TOUCH.DOLLY_PAN;

    const transform = new TransformControls(camera, renderer.domElement);
    transform.setSize(0.8);
    transform.addEventListener('dragging-changed', (event) => {
      orbit.enabled = !Boolean(event.value);
    });
    transform.addEventListener('mouseUp', () => {
      const selected = transform.object;
      const current = snapshotRef.current;
      if (!selected || !current || current.playing) return;
      const object = current.scene.objects.find((candidate) => candidate.id === selected.userData.objectId);
      const previous = object ? componentOf(object, 'transform') : undefined;
      if (!object || !previous) return;
      void dispatch({
        type: 'update-transform',
        objectId: object.id,
        transform: serializeTransform(selected, previous),
      });
    });
    scene.add(transform.getHelper());

    const grid = new THREE.GridHelper(200, 200, 0x4a515c, 0x2a2f37);
    grid.material.transparent = true;
    grid.material.opacity = 0.72;
    scene.add(grid);
    scene.add(new THREE.HemisphereLight(0xcad7e6, 0x1a1d22, 0.65));
    scene.add(contentRootRef.current);

    const raycaster = new THREE.Raycaster();
    const pointer = new THREE.Vector2();
    const onPointerDown = (event: PointerEvent) => {
      if (snapshotRef.current?.playing) return;
      const bounds = renderer.domElement.getBoundingClientRect();
      pointer.x = ((event.clientX - bounds.left) / bounds.width) * 2 - 1;
      pointer.y = -((event.clientY - bounds.top) / bounds.height) * 2 + 1;
      raycaster.setFromCamera(pointer, camera);
      const hit = raycaster.intersectObjects([...objectMapRef.current.values()], true)[0];
      const objectId = hit?.object.userData.objectId
        ?? hit?.object.parent?.userData.objectId
        ?? null;
      if (objectId !== snapshotRef.current?.selectedObjectId) {
        void dispatch({ type: 'select-object', objectId });
      }
    };
    renderer.domElement.addEventListener('pointerdown', onPointerDown);

    orbit.addEventListener('end', () => {
      const current = snapshotRef.current;
      if (!current || current.playing) return;
      void dispatch({
        type: 'set-editor-camera',
        orbit: { x: camera.position.x, y: camera.position.y, z: camera.position.z },
        target: { x: orbit.target.x, y: orbit.target.y, z: orbit.target.z },
      });
    });

    const resize = () => {
      const width = Math.max(1, container.clientWidth);
      const height = Math.max(1, container.clientHeight);
      camera.aspect = width / height;
      camera.updateProjectionMatrix();
      renderer.setSize(width, height, false);
    };
    const resizeObserver = new ResizeObserver(resize);
    resizeObserver.observe(container);
    resize();

    let frame = 0;
    const renderFrame = () => {
      orbit.update();
      renderer.render(scene, camera);
      frame = requestAnimationFrame(renderFrame);
    };
    renderFrame();

    rendererRef.current = renderer;
    sceneRef.current = scene;
    cameraRef.current = camera;
    orbitRef.current = orbit;
    transformRef.current = transform;

    return () => {
      cancelAnimationFrame(frame);
      resizeObserver.disconnect();
      renderer.domElement.removeEventListener('pointerdown', onPointerDown);
      orbit.dispose();
      transform.dispose();
      renderer.dispose();
      renderer.domElement.remove();
      rendererRef.current = null;
      sceneRef.current = null;
      cameraRef.current = null;
      orbitRef.current = null;
      transformRef.current = null;
    };
  }, [dispatch]);

  useEffect(() => {
    if (!snapshot) return;
    const root = contentRootRef.current;
    root.children.slice().forEach((child) => {
      root.remove(child);
      disposeObject(child);
    });
    objectMapRef.current.clear();

    snapshot.scene.objects.forEach((object) => {
      const renderable = buildRenderable(object);
      if (!renderable) return;
      root.add(renderable);
      objectMapRef.current.set(object.id, renderable);
    });
  }, [snapshot?.scene.objects]);

  useEffect(() => {
    if (!snapshot) return;
    const camera = cameraRef.current;
    const orbit = orbitRef.current;
    const transform = transformRef.current;
    if (!camera || !orbit || !transform) return;

    if (!initializedCameraRef.current) {
      const { cameraOrbit, cameraTarget } = snapshot.scene.editorSettings;
      camera.position.set(cameraOrbit.x, cameraOrbit.y, cameraOrbit.z);
      orbit.target.set(cameraTarget.x, cameraTarget.y, cameraTarget.z);
      orbit.update();
      initializedCameraRef.current = true;
    }

    if (snapshot.playing) {
      transform.detach();
      transform.enabled = false;
      orbit.enabled = false;
      const mainCameraObject = snapshot.scene.objects.find((object) => componentOf(object, 'camera')?.isMain);
      const cameraComponent = mainCameraObject ? componentOf(mainCameraObject, 'camera') : undefined;
      const cameraTransform = mainCameraObject ? componentOf(mainCameraObject, 'transform') : undefined;
      if (cameraComponent && cameraTransform) {
        camera.fov = cameraComponent.fieldOfViewDegrees;
        camera.near = cameraComponent.nearPlane;
        camera.far = cameraComponent.farPlane;
        applyTransform(camera, cameraTransform);
        camera.updateProjectionMatrix();
      }
      return;
    }

    camera.fov = 58;
    camera.near = 0.03;
    camera.far = 800;
    camera.updateProjectionMatrix();
    transform.enabled = true;
    orbit.enabled = true;
    transform.setMode(snapshot.mode === 'select' ? 'translate' : snapshot.mode);
    const selected = snapshot.selectedObjectId
      ? objectMapRef.current.get(snapshot.selectedObjectId)
      : undefined;
    if (selected && snapshot.mode !== 'select') transform.attach(selected);
    else transform.detach();
  }, [snapshot?.playing, snapshot?.mode, snapshot?.selectedObjectId, snapshot?.scene.objects]);

  return <div ref={containerRef} className="scene-viewport" aria-label="Viewport 3D" />;
}
