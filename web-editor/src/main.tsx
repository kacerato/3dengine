import React from 'react';
import ReactDOM from 'react-dom/client';
import { EditorProvider } from './editor/store';
import { EditorShell } from './editor/EditorShell';
import './styles.css';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <EditorProvider>
      <EditorShell />
    </EditorProvider>
  </React.StrictMode>,
);
