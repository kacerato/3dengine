# Megazord Engine

**Megazord Engine** é um estúdio e motor de jogos 3D completo para Android, feito em Kotlin, Java e Smali, totalmente otimizado para uso landscape em celulares e tablets.

![Megazord Engine](docs-site/assets/megazord_banner.png)

## 🚀 Recursos e Funcionalidades

- **Gerador e Exportador de APK & AAB**: Exportação direta para `.apk` e `.aab` (Android App Bundle) em segundo plano, salvando diretamente na pasta pública `/sdcard/Download/`.
- **Motor de Scripting Python Integrado**: Suporte experimental para automação e scripts via `bootstrap.py` e API `MegazordContext`.
- **Canvas NoCode & Grafos Visuais**: Sistema completo de nós NoCode para controle de objetos, eventos de toque, movimentos de câmera, rotação, física e lógica de jogo sem programar.
- **Tela de Carregamento Megazord Studio**: Nova interface de carregamento com arte do fantasma roxo, contadores de estágios (`Stage 4/4`), barra de progresso com porcentagem e indicadores visuais.
- **Visualizador & Viewport 3D Nativo**: Câmera orbital, controle de iluminação, modelos GLB/OBJ, terrenos e sistema de gizmos RGB.
- **Dark Theme Studio**: Interface escura elegante no estilo Studio profissional.

## 📦 Estrutura do Repositório

- `megazord-engine-decompiled/`: Código-fonte descompilado do aplicativo Megazord Engine (Manifest, layouts `res/`, assets `assets/` e código `smali/`).
- `assets/Engine/Python/`: Motor de scripting Python (`bootstrap.py`, `megazord_api.py`).
- `docs/`: Documentação da linguagem visual NoCode, catálogo de nós nativos e arquitetura.
- `docs-site/`: Site e documentação visual em HTML/CSS.
- `.godot_archive/`: Arquivo histórico das versões e fixtures legadas.

## 🧩 Catálogo de Nós NoCode

| Categoria | Nó | Descrição |
|---|---|---|
| **Eventos** | `On Start` | Executado na inicialização da cena |
| **Eventos** | `On Touch / Click` | Disparado ao tocar em um objeto 3D ou botão UI |
| **Eventos** | `On Update (Frame)` | Executado continuamente a cada frame |
| **Movimento** | `Rotate Object` | Aplica rotação nos eixos X, Y, Z com velocidade ajustável |
| **Movimento** | `Translate / Move` | Move o objeto no espaço 3D |
| **Controle** | `Joystick / Touch Input` | Captura entrada analógica de controle mobile |
| **Câmera** | `Camera Follow / LookAt` | Faz a câmera seguir ou olhar para um alvo |
| **Lógica** | `If / Else Condition` | Ramificação condicional por comparação de valores |
| **Física** | `Add Force / Impulse` | Aplica forças físicas em RigidBodies |

## 🛠️ Como Compilar e Gerar APK

```powershell
# Recompilar com Apktool 2.10.0
java -jar apktool_2.10.0.jar b megazord-engine-decompiled -o build/megazord_patched.apk

# Alinhar
zipalign -p -f 4 build/megazord_patched.apk build/megazord_aligned.apk

# Assinar
apksigner sign --ks debug.keystore --ks-pass pass:android --key-pass pass:android --ks-key-alias itsmagic --out build/megazord_signed.apk build/megazord_aligned.apk
```

---
© Megazord Engine - Mobile Game Creation Engine
