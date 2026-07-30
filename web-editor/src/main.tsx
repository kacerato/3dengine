import React from 'react';
import ReactDOM from 'react-dom/client';
import { EditorProvider } from './editor/store';
import { EditorShell } from './editor/EditorShell';
import './styles.css';

type ErrorBoundaryState = {
  error: Error | null;
};

const errorMessage = (value: unknown): string => {
  if (value instanceof Error) return value.stack ?? value.message;
  if (typeof value === 'string') return value;
  try {
    return JSON.stringify(value, null, 2);
  } catch {
    return 'Falha desconhecida ao iniciar o editor.';
  }
};

const showBootError = (value: unknown) => {
  const status = document.getElementById('editor-boot-status');
  if (!status) return;
  status.dataset.error = 'true';
  status.textContent = `Não foi possível iniciar o editor.\n\n${errorMessage(value)}`;
};

class EditorErrorBoundary extends React.Component<React.PropsWithChildren, ErrorBoundaryState> {
  state: ErrorBoundaryState = { error: null };

  static getDerivedStateFromError(error: Error): ErrorBoundaryState {
    return { error };
  }

  componentDidCatch(error: Error) {
    console.error('Editor render failure', error);
  }

  render() {
    if (this.state.error) {
      return (
        <main
          style={{
            width: '100%',
            height: '100%',
            display: 'grid',
            placeItems: 'center',
            padding: 24,
            boxSizing: 'border-box',
            background: '#0f1115',
            color: '#f2a0a6',
            fontFamily: 'system-ui, sans-serif',
            textAlign: 'center',
            whiteSpace: 'pre-wrap',
          }}
        >
          {`Não foi possível renderizar o editor.\n\n${errorMessage(this.state.error)}`}
        </main>
      );
    }
    return this.props.children;
  }
}

window.addEventListener('error', (event) => showBootError(event.error ?? event.message));
window.addEventListener('unhandledrejection', (event) => showBootError(event.reason));

try {
  const rootElement = document.getElementById('root');
  if (!rootElement) throw new Error('Elemento raiz do editor não foi encontrado.');

  ReactDOM.createRoot(rootElement).render(
    <React.StrictMode>
      <EditorErrorBoundary>
        <EditorProvider>
          <EditorShell />
        </EditorProvider>
      </EditorErrorBoundary>
    </React.StrictMode>,
  );

  window.requestAnimationFrame(() => {
    document.getElementById('editor-boot-status')?.remove();
  });
} catch (error) {
  showBootError(error);
}
