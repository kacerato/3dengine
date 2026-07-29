# Roadmap

## Fundação — concluída

- [x] Android Kotlin/Compose modular;
- [x] projetos versionados, Room, DataStore e arquivos atômicos;
- [x] navegação, criação, abertura e renomeação;
- [x] logs, testes JVM, lint e builds APK.

## Vertical slice do editor — validada em emulador

- [x] landscape obrigatório e shell mobile/tablet inspirado em engines;
- [x] documento de cena e componentes;
- [x] viewport Filament/SceneView;
- [x] cubo, plano, câmera, luz e GLB;
- [x] seleção, inspector, transform, duplicação e exclusão;
- [x] undo/redo, autosave e reabertura;
- [x] Lua sandboxado com toque e Transform;
- [x] grafo visual persistente usando a mesma API;
- [x] modo Visualizar e Mountain Demo.
- [x] workspace de três colunas em telefone landscape amplo;
- [x] gizmo RGB táctil por eixo com undo/autosave;
- [x] editor Lua integrado com criação, validação e persistência;
- [x] canvas NoCode executável com paleta de ações.

Validação atual: AVD de 4 GB com Android 17/API 37. A validação em aparelho
físico continua necessária para GPU, teclado, bateria e memória reais.

## Próxima tarefa concreta

- [ ] completar a matriz de testes instrumentados do `EditorShell` em
  640 × 360, telefone grande e tablet, incluindo bounds, fonte ampliada e IME;
- [ ] validar importação SAF com uma coleção externa de GLBs e registrar
  sucesso/erro/renderização de cada arquivo;
- [ ] melhorar foco/enquadramento e projetar o gizmo exatamente sobre a origem
  renderizada do objeto selecionado.

## Sequência posterior

- [ ] orientação local/global, snapping e comandos granulares de edição;
- [ ] previews de assets sob demanda e importação GLTF/OBJ testada;
- [ ] física/colliders e touch input;
- [ ] editor Lua com autocomplete, busca, breakpoints e hot reload;
- [ ] canvas no-code livre com portas tipadas e depuração visual;
- [ ] áudio, animação e UI de jogo;
- [ ] pacote `.mobileproject` via SAF;
- [ ] API Java/plugins com permissões e isolamento;
- [ ] templates e exportação de jogos para APK/AAB;
- [ ] terreno, navegação, personagens e recursos avançados.

Nenhum formato ou recurso será marcado como completo sem teste real do caminho
correspondente.
