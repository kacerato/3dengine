# Mobile Game Studio

Mobile Game Studio é um editor de jogos 3D para Android, feito em Kotlin e
Jetpack Compose e desenhado para uso horizontal em celulares e tablets. O
estado atual é uma vertical slice executável: ainda não é uma concorrente
completa de Godot/Unity, mas já cria, edita, salva e executa uma pequena cena.

## O que funciona

- editor sempre em landscape, com viewport dominante e docks responsivos;
- viewport 3D nativo Filament/SceneView, câmera orbital e seleção por toque;
- hierarquia, inspector numérico e gizmos RGB de mover, rotacionar e escalar;
- criação de cubo, plano, câmera e luz, duplicação, exclusão e renomeação;
- documento de cena versionado com GameObjects, componentes e validação;
- undo/redo limitado, autosave e controle otimista de revisão;
- importação GLB autocontida via Android Storage Access Framework;
- biblioteca de assets persistente e adição de modelos à cena;
- runtime LuaJ sandboxado com eventos de toque, Transform e logs;
- editor Lua integrado com criação, validação e persistência por objeto;
- canvas NoCode navegável, pan livre, nodes móveis e cabos manuais arrastáveis;
- modo Visualizar isolado da cena editável;
- projeto “Open World Starter” com terreno, grama 3D, Toy Car CC0, personagem
  animado, câmera FPS, joystick, pulo, Lua e NoCode;
- projetos, scripts, grafos e assets persistidos no armazenamento privado;
- APK debug, APK de testes e release não assinado compiláveis.

## Teste rápido

1. Instale `app/build/outputs/apk/debug/app-debug.apk`.
2. Abra **Open World Starter** na tela inicial.
3. Use **Cena** para selecionar um objeto e **Inspector** para editar XYZ.
4. Use **+ Adicionar** para criar cubo/plano/câmera/luz.
5. Em **Assets**, importe um `.glb` autocontido e insira-o na cena.
6. Em **Lógica**, use “Girar ao tocar · rápido” ou edite o fluxo.
7. Toque em **Play**, interaja e use **Parar** para voltar à cena editável.

O fluxo principal e a renderização foram executados em AVD Android 17/API 37
com 4 GB. Isso não substitui aparelho físico: GPU, teclado, bateria e pressão de
memória variam por fabricante. Em um AVD de 2 GB sob forte pressão geral, o
Android encerrou o processo ao abrir o Filament.

Esta versão aceita apenas projetos e assets locais confiáveis. Ainda não é
seguro executar scripts ou modelos deliberadamente hostis: Lua não possui quota
rígida de heap e imagens comprimidas dentro de GLB não têm orçamento por pixels
decodificados.

## Toolchain

- JDK 17
- Gradle Wrapper 8.10.2
- Android Gradle Plugin 8.7.0
- Kotlin 2.0.21
- `compileSdk` / `targetSdk` 35
- `minSdk` 26
- SceneView 2.3.0 / Google Filament
- LuaJ 3.0.1

## Compilar e testar

```powershell
$env:JAVA_HOME='C:\Program Files\Eclipse Adoptium\jdk-17.0.19.10-hotspot'
$env:ANDROID_HOME='C:\Users\jamaa\AppData\Local\Android\Sdk'

.\gradlew.bat test
.\gradlew.bat testDebugUnitTest
.\gradlew.bat :app:assembleDebug
.\gradlew.bat :app:assembleDebugAndroidTest
.\gradlew.bat :app:lintDebug
.\gradlew.bat :app:assembleRelease
```

## Módulos

- `app`: composição, navegação, tema e injeção explícita.
- `core:model`: cena, componentes, comandos e validadores.
- `core:contracts`: contratos de projeto e conteúdo.
- `core:common`: relógio, IDs e logging.
- `projects`: JSON, arquivos atômicos, assets, Room e DataStore.
- `editor`: UI landscape, hierarquia, inspector, assets e lógica visual.
- `runtime`: projeção do documento de cena para Filament/SceneView.
- `scripting`: Lua sandboxado e executor do grafo visual.

Veja [a arquitetura](docs/ARCHITECTURE.md), o [roadmap](ROADMAP.md) e as
[decisões arquiteturais](docs/adr/).
