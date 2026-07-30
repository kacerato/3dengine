import {
  createContext,
  type PropsWithChildren,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
} from 'react';
import { editorBridge } from './bridge';
import type { EditorCommand, EditorSnapshot } from './types';

type EditorController = {
  snapshot: EditorSnapshot | null;
  busy: boolean;
  error: string | null;
  dispatch(command: EditorCommand): Promise<void>;
  save(): Promise<void>;
  play(): Promise<void>;
  stop(): Promise<void>;
  undo(): Promise<void>;
  redo(): Promise<void>;
  reload(): Promise<void>;
};

const EditorContext = createContext<EditorController | null>(null);

export function EditorProvider({ children }: PropsWithChildren) {
  const [snapshot, setSnapshot] = useState<EditorSnapshot | null>(null);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const run = useCallback(async (operation: () => Promise<EditorSnapshot>) => {
    setBusy(true);
    setError(null);
    try {
      setSnapshot(await operation());
    } catch (cause) {
      setError(cause instanceof Error ? cause.message : 'Falha desconhecida no editor.');
    } finally {
      setBusy(false);
    }
  }, []);

  const reload = useCallback(() => run(() => editorBridge.getSnapshot()), [run]);
  const dispatch = useCallback(
    (command: EditorCommand) => run(() => editorBridge.dispatch(command)),
    [run],
  );
  const save = useCallback(() => run(() => editorBridge.save()), [run]);
  const play = useCallback(() => run(() => editorBridge.startPlay()), [run]);
  const stop = useCallback(() => run(() => editorBridge.stopPlay()), [run]);
  const undo = useCallback(() => run(() => editorBridge.undo()), [run]);
  const redo = useCallback(() => run(() => editorBridge.redo()), [run]);

  useEffect(() => {
    void reload();
  }, [reload]);

  const value = useMemo<EditorController>(
    () => ({ snapshot, busy, error, dispatch, save, play, stop, undo, redo, reload }),
    [snapshot, busy, error, dispatch, save, play, stop, undo, redo, reload],
  );

  return <EditorContext.Provider value={value}>{children}</EditorContext.Provider>;
}

export function useEditor(): EditorController {
  const value = useContext(EditorContext);
  if (!value) throw new Error('useEditor precisa estar dentro de EditorProvider.');
  return value;
}
