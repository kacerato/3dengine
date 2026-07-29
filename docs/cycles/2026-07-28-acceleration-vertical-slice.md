# Ciclo de aceleração — vertical slice jogável

## Objetivo do ciclo

Transformar a fundação de projetos em um editor landscape capaz de criar,
renderizar, salvar, reabrir e executar uma pequena cena 3D com lógica Lua e
no-code.

## Agentes utilizados

- Coordenador Principal;
- Especialista Android e UX mobile;
- Revisor Técnico;
- Especialista de Segurança.

## Análise encontrada

O repositório compilava uma fundação modular com criação e salvamento de
projetos, mas não possuía implementação real de cena, viewport, assets,
scripting ou no-code. A interface inicial também não impunha landscape nem
entregava o fluxo de uma engine.

## Implementações realizadas

- orientação landscape e interface densa com topbar, hierarquia, viewport,
  inspector, assets e navegação;
- documento de cena v1, componentes, validação e histórico;
- viewport SceneView/Filament com primitivas PBR e GLB;
- criação, seleção, transform, renomeação, duplicação e exclusão de objetos;
- persistência atômica da cena e autosave protegido por geração de edição;
- importação GLB autocontida com limites e índice de assets;
- Mountain Demo com GLB 2.0 real, Lua e grafo;
- runtime LuaJ sandboxado com orçamento de execução;
- editor visual no-code, validador compartilhado, persistência e execução;
- modo Visualizar separado do documento editável;
- testes de cena, persistência, assets, Lua, grafo e ViewModels.

## Testes executados

Pipeline final:

```powershell
.\gradlew.bat test testDebugUnitTest :app:assembleDebug `
  :app:assembleDebugAndroidTest :app:lintDebug :app:assembleRelease `
  --no-daemon --no-build-cache
```

Resultado real: `BUILD SUCCESSFUL`.

- 46 testes distintos;
- 79 execuções incluindo variantes debug/release;
- 0 falhas, 0 erros e 0 ignorados;
- APK debug e APK instrumentado compilados;
- APK release não assinado compilado;
- lint: 0 erros e 47 warnings de versões/toolchain;
- manifesto final: landscape, sem permissão de Internet, ARM64 incluído.

Um build focado posterior também passou após isolar o loader por geração:

```powershell
.\gradlew.bat :runtime:assembleDebug :editor:testDebugUnitTest `
  :app:assembleDebug --no-daemon --no-build-cache
```

`adb devices -l` retornou lista vazia. O APK instrumentado foi compilado, mas
nenhum teste foi executado em Android.

## Problemas encontrados

- o primeiro fluxo de demo inferia conteúdo pelo nome do projeto e poderia
  alterar dados do usuário; agora a demo é identificada pelo ID da cena e só é
  instalada em projeto novo;
- um save concorrente podia marcar edições posteriores como persistidas; agora
  o ViewModel usa uma geração de edição e agenda novo save;
- o grafo inicialmente era apenas uma indicação visual; agora cria, conecta,
  valida, salva e executa nós reais;
- componentes desativados eram considerados pelo modo Play; agora são filtrados;
- undo era apagado pelo autosave; agora somente a metadata canônica é atualizada;
- scripts inválidos mantinham callbacks; agora a carga reverte registros e
  impede iniciar Play com diagnóstico;
- grafos dependiam de nome e do primeiro componente; agora usam ID e path por objeto;
- cargas canceladas podiam reter assets Filament internos; cada geração agora
  possui e destrói seu próprio `ModelLoader`;
- instalação interrompida da demo agora é marcada, detectada e reparada;
- ainda não há dispositivo/emulador conectado para validar renderização e toque;
- câmera e luz do documento ainda não dirigem o modo Play.

## Revisão técnica

A revisão inicial rejeitou o ciclo pelos riscos de sobrescrita da demo e corrida
de salvamento. Rodadas posteriores rejeitaram undo após autosave, callbacks Lua
parciais, vínculos no-code por nome, histórico de gestos, instalação parcial e
cancelamento do loader. Todos esses caminhos receberam correções e testes quando
aplicável.

Revisor Técnico, Android/UX e Segurança aprovaram a vertical slice local após as
correções. Segurança manteve
NÃO-GO explícito para conteúdo hostil/produção por ausência de quota rígida de
heap Lua e de limite por pixels decodificados em texturas GLB.

## Próxima tarefa

Projetar `CameraComponent` e `DirectionalLightComponent` no runtime do modo
Play e validar o APK em dispositivo Android, incluindo um aparelho de 4 GB.
