# Ciclo — editor mobile utilizável

Data: 2026-07-29

## Objetivo

Substituir a tela genérica e centrada em projetos por uma vertical slice de
engine em landscape: viewport 3D dominante, criação e edição de objetos,
Inspector, Assets, Lógica e Play/Stop, com persistência e validação em AVD.

## Agentes

- Coordenador principal: integração, implementação, testes e documentação.
- Arquitetura/UX: shell compacto e expandido.
- Testes/UX: política de layout e ViewModel.
- Auditoria de emulador: fluxo e métricas reais.
- Revisor técnico e segurança: corridas, persistência, limites e sandbox.

## Implementado

- `EditorShell` compacto mantém o viewport e abre no máximo um dock inferior;
- layout expandido usa hierarquia, viewport, Inspector e Assets em docks;
- Home e workspace receberam linguagem visual de editor técnico;
- `+ Adicionar` cria objetos e comportamentos rápidos reutilizam o grafo atual;
- Inspector edita nome e Transform XYZ absoluto;
- Surface Filament ocupa toda a largura;
- Play isola o snapshot, bloqueia edição e Stop restaura o documento;
- cenas, renome, Transform e grafos persistem com proteção contra corridas;
- SAF roda em I/O e GLB recebe validação estrutural adicional;
- limites de objetos, GLBs, componentes, scripts e grafos protegem o runtime.

## Evidência

- `build-validation-final-home.png`
- `build-validation-final-shell.png`
- `build-validation-final-inspector.png`
- `build-validation-final-numeric-verified.xml`
- `build-validation-final-panel-scene.png`
- `build-validation-final-panel-assets.png`
- `build-validation-final-panel-logic.png`
- `build-validation-final2-play-dirty.png`
- `build-validation-final2-stop.png`

No AVD Android 17/API 37, 2400 × 1080 e 4 GB:

- editor: aproximadamente 147 MB PSS / 272 MB RSS;
- Play: aproximadamente 175 MB PSS / 304 MB RSS;
- cold start: 3,4–4,7 s;
- nenhum crash, ANR ou `FATAL` no fluxo final.

## Limitações verificadas

- AVD de 2 GB encerrou o processo por pressão global de memória;
- seleção destaca e atualiza Inspector, mas não reenquadra o objeto;
- houve 31 frames perdidos no ciclo Play/Stop e duas inicializações Filament;
- o GLB interno renderiza, mas uma matriz externa via SAF não foi executada;
- aparelho físico, multitouch, fonte ampliada e tablet real não foram validados;
- conteúdo não confiável ainda exige sandbox em processo isolado.

## Testes finais

```powershell
.\gradlew.bat :app:connectedDebugAndroidTest `
  --no-daemon --no-build-cache --console=plain
```

`BUILD SUCCESSFUL in 2m 23s`: 1 teste instrumentado, 0 falhas, 0 erros.
AndroidX Test 1.3.0, Espresso 3.7.0 e Tracing 1.3.0 corrigiram a falha anterior
de `InputManager.getInstance` no Android 17.

```powershell
.\gradlew.bat test lintDebug assembleDebug assembleRelease `
  --no-daemon --console=plain
```

`BUILD SUCCESSFUL in 2m 30s`: 379 tarefas; 101 testes JVM, 0 falhas, 0 erros;
lint sem erros. Foram gerados:

- `app/build/outputs/apk/debug/app-debug.apk` — 42.963.852 bytes;
- `app/build/outputs/apk/release/app-release-unsigned.apk` — 38.972.951 bytes.

## Próximo ciclo

Implementar foco/enquadramento explícito no objeto selecionado e validar
importação SAF com uma pequena coleção externa de GLBs válidos e inválidos.
