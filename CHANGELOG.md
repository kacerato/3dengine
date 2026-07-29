# Changelog

## 0.4.0 — 2026-07-29

### Editor de engine

- layout landscape amplo passa a usar `hierarquia | viewport | inspector`;
- identidade visual roxa derivada da logo oficial no launcher, Home e workspace;
- ferramentas do viewport ganharam ícones e gizmo RGB manipulável por eixo;
- arrastar os handles X/Y/Z altera Transform, participa de undo e autosave;
- editor Lua integrado cria, edita, valida e persiste scripts ligados ao objeto;
- o Play aguarda a gravação de scripts e executa o mesmo documento da cena;
- NoCode ganhou canvas de fluxo, conexões visuais e paleta de nós em popup;
- criação e hierarquia usam iconografia específica para malha, câmera e luz.

### Validação

- 26 testes do módulo `editor` aprovados, incluindo criação/persistência de script;
- `test`, `lintDebug` e `assembleDebug` concluídos sem erros;
- APK instalado no AVD e gizmo X alterou a posição de `0.00` para `2.57`;
- editor de código e fluxo NoCode foram abertos e persistidos no AVD.

## 0.3.0 — 2026-07-29

### Adicionado

- `EditorShell` responsivo com política por espaço útil em dp;
- viewport persistente e dominante no celular, com zero ou um painel inferior;
- docks de hierarquia, inspector e assets para tablets;
- fluxo categorizado `+ Adicionar` e comportamentos rápidos de toque;
- campos numéricos XYZ no inspector e feedback do objeto selecionado;
- estados explícitos de início/execução/cancelamento do Play;
- testes de política de layout, Play/Stop, rename e grafos concorrentes;
- auditoria real de UX com screenshots, métricas e reprodução dos problemas.

### Corrigido

- Surface Filament limitada a aproximadamente 414 px por falta de `fillMaxWidth`;
- controles de 38 dp, textos sobrepostos e inspector cortado;
- barras do sistema sem contraste e conteúdo sem `safeDrawing`;
- Play sobre cena não salva e edição acidental durante execução;
- renomeação que não era copiada para o `SceneDocument`;
- comportamento rápido que recriava e apagava o grafo existente;
- corridas entre carregar/salvar grafo e iniciar Play;
- eventos de gameplay agora são serializados;
- streams SAF são abertos fora da thread principal;
- validação GLB exige alinhamento e exatamente um chunk BIN.

### Segurança e desempenho

- máximo de 256 objetos renderizáveis e 32 instâncias GLB simultâneas;
- máximo de 16 componentes por objeto;
- Play limitado a 8 scripts, 16 grafos e 750 ms de inicialização;
- scripts e eventos de gameplay saem da thread principal em produção.

### Validação

- AVD Android 17/API 37, 2400 × 1080 px, 420 dpi e 4 GB;
- criação, seleção, salvar/force-stop/reabrir e Play/Stop executados;
- Surface Filament full-width e geometria real confirmadas;
- 101 testes JVM e 1 teste instrumentado aprovados;
- build debug/release e lint executados sem erro.

### Limitações conhecidas

- no AVD de 2 GB o `lowmemorykiller` encerrou o processo sob pressão geral;
- GLB ainda precisa de uma matriz de arquivos externos via SAF;
- outline 3D real ainda não existe;
- teclado/fonte ampliada exigem uma matriz maior de aparelhos;
- conteúdo compartilhado não confiável ainda requer sandbox em processo isolado.

## 0.2.0 — 2026-07-28

### Adicionado

- editor Android obrigatório em landscape, com hierarquia visual de engine;
- documento de cena e sistema de componentes versionados;
- viewport nativo SceneView/Filament com cubo, plano e GLB;
- inspector de Transform, seleção, ferramentas, criação e exclusão de objetos;
- undo/redo limitado, autosave e persistência da cena;
- biblioteca de assets e importação GLB autocontida via SAF;
- Mountain Demo com geometria GLB 2.0/PBR gerada no projeto;
- LuaJ sandboxado com eventos de toque e orçamento de execução;
- editor no-code persistente com nós executáveis;
- modo Visualizar isolado da cena editável;
- ADR do runtime e avisos de licenças.

### Corrigido

- remoção da inferência de demo pelo nome do projeto;
- proteção contra save concorrente marcando alterações posteriores como salvas;
- IDs globais de componentes e objetos criados;
- limites de grafo, callbacks Lua e estruturas GLB;
- remoção da permissão de Internet herdada pelo manifesto final.
- undo preservado após autosave e gestos contínuos coalescidos;
- callbacks Lua revertidos quando o carregamento do script falha;
- grafos novos ligados por ID estável e isolados por objeto selecionado;
- recuperação por marcador para instalação interrompida da Mountain Demo;
- cancelamento de GLB com `ModelLoader` isolado e descarte integral;
- exclusão hierárquica sem referências filhas órfãs e navegação mutuamente exclusiva.

### Limitações conhecidas

- sem execução instrumentada ou validação visual em dispositivo nesta máquina;
- câmera e luz autorais ainda não controlam o modo Play;
- GLB foi validado estruturalmente e compila no loader, mas o parser nativo
  precisa de uma matriz de modelos e aparelhos reais;
- física, áudio, exportação de jogos e plugins Java não estão implementados.

## 0.1.0 — 2026-07-28

### Adicionado

- fundação Android modular com Kotlin, Compose e Navigation;
- fluxo real para criar, listar, abrir e renomear projetos;
- formato `project.json` v1 e estrutura inicial de diretórios;
- escrita sincronizada e substituição atômica de metadados;
- índice Room reconstruível e preferência DataStore;
- proteção de revisão contra salvamento concorrente;
- leitura limitada de metadados e validação de caminhos internos;
- reconciliação que distingue falha de enumeração de catálogo vazio;
- publicação de catálogo em escopo de aplicação após commit durável;
- catálogo revisionado que recusa publicação fora de ordem;
- testes do repositório e do workspace;
- vetores locais no lugar do pacote completo de ícones estendidos;
- contratos de runtime gráfico e scripting sem implementação fictícia;
- testes de validação, codec, persistência, corrupção, concorrência e ViewModel;
- APK debug, APK instrumentado compilável e relatórios de lint;
- ADRs, arquitetura e roadmap.

### Segurança

- nomes visíveis não são usados como caminhos;
- IDs são validados antes de resolver diretórios;
- metadados têm limite de tamanho e versão futura é recusada;
- backup Android está desativado e não há permissão ampla de armazenamento.
- regras de extração excluem arquivos, bancos e preferências de backup/transferência;
- temporários imprevisíveis usam `NOFOLLOW_LINKS` e move atômico obrigatório.

### Limitações conhecidas

- testes instrumentados não foram executados por falta de dispositivo/emulador;
- lint da toolchain conservadora avisa sobre versões mais novas e checks de
  Navigation incompatíveis com a API de análise empacotada;
- Godot, assets, Lua/Luau, no-code, Java plugins, SAF e exportação não estão
  implementados.
