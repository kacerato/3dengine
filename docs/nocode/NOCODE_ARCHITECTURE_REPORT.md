# Relatório Técnico de Arquitetura NoCode: Megazord Engine vs Godot Engine

## 1. Separação de Arquitetura NoCode

| Categoria | NoCode Atual (Megazord Engine) | NoCode da Outra Engine (Godot Base) |
|---|---|---|
| **Runtime Base** | Smali / Java / LuaJ Sandboxado em Android | Módulo Nativo C++ (`mgs_nocode_runner.cpp`) |
| **Execução de Nós** | Grafo interpretado em tempo de execução via evento e callbacks Java | Grafo compilado/indexado em nós C++ nativos (`GraphEdit`/`GraphNode`) |
| **Persistência** | Formato JSON de Grafo + Configurações de Componente | `*.graph.json` vinculado diretamente a cenas `.tscn` |
| **Foco de Uso** | Mobile UI, Toque, Transform, Animação e Exporte APK/AAB | Raycast nativo, nós numéricos, física de colisão avançada e nós nativos C++ |

---

## 2. Documentação e Especificação dos Nós Solicitados

### 🟢 Eventos Customizados (Custom Events)
- **`Custom Event`**: Registro de escutador de eventos customizados identificados por string `event_name`. Dispara o fluxo quando o evento correspondente é emitido na cena.
- **`Custom Event Bool/Number/Text`**: Variações tipadas que recebem e disponibilizam no fluxo payloads de dados do tipo Booleano (`bool`), Numérico (`float/int`) ou Texto (`string`).

### 🔴 Envio de Eventos (Send Event)
- **`Send Event`**: Disparador de eventos que envia uma notificação global ou direcionada a um objeto alvo (`target_object`).
- **`Send Event Bool/Number/Text`**: Disparador que envia um evento levando um valor tipado (ex: passar dano numérico, flag de ativação booleana ou mensagem de texto).

### 🔀 Controle de Fluxo
- **`Multi Gate`**: Nó de chaveamento sequencial. Cada execução direciona o fluxo para a saída seguinte (`Out 1` $\rightarrow$ `Out 2` $\rightarrow$ `Out 3` $\rightarrow$ `Reset`).

### 🎯 Percepção e Interação 3D
- **`Trace Ray Object (Raycast)`**: Lança um raio 3D a partir da câmera ou de uma posição inicial na direção especificada. Retorna se houve colisão (`hit`), o objeto atingido (`hit_object`), a distância (`distance`) e o ponto de impacto no espaço.
- **`Object Distance`**: Calcula a distância euclidiana $d = \sqrt{(x_2-x_1)^2 + (y_2-y_1)^2 + (z_2-z_1)^2}$ entre dois GameObjects ou posições no espaço.
- **`OnObjectsDistance`**: Evento reativo disparado quando a distância entre dois objetos fica abaixo de um raio limite configurado (`threshold_distance`).

### 🧩 Manipulação Dinâmica de Componentes
- **`Pick Component`**: Busca dinamicamente um componente anexado a um GameObject pelo nome do tipo (ex: `RigidBody`, `MeshRenderer`, `AudioSource`).
- **`Component Method`**: Invoca um método público específico do componente selecionado passando parâmetros dinâmicos.

### 💾 Estado Compartilhado e Atributos Globais
- **Atributos como Estado Compartilhado**: Leitura e escrita de variáveis de estado globais ou de cena (`Shared Properties / Blackboard`). Permite que múltiplos objetos leiam a mesma pontuação, inventário ou estado do jogo sem acoplamento direto.

### ⚡ Composição de Ações Ordenadas ou Independentes
- **Sequence (Ações Ordenadas)**: Executa uma cadeia de nós em sequência estrita (Ação 1 conclui $\rightarrow$ Ação 2 inicia).
- **Parallel (Ações Independentes)**: Dispara múltiplas ramificações de fluxo simultaneamente no mesmo frame.

---

## 3. Solução Arquitetural: Mecânica de Interação Multiobjeto sem Conflito

### O Problema
Ao aproximar dois objetos interativos (ex: duas chaves ou dois itens coletáveis próximos), nós simples de proximidade entram em conflito, fazendo a UI de ação piscar ou ativar o objeto errado.

### A Solução no NoCode da Megazord Engine

```
[ Câmera / Player ] ─── (Raycast + Vetor Visão) ───► [ Seletor de Alvo ]
                                                            │
                                        ┌───────────────────┴───────────────────┐
                                        ▼                                       ▼
                             [ Objeto A (Dist: 1.2m) ]               [ Objeto B (Dist: 1.4m) ]
                             [ Ângulo Visão: 2°     ]               [ Ângulo Visão: 25°    ]
                                        │
                                        ▼
                             [ Alvo Ativo Escolhido: A ]
                                        │
                                        ▼
                       [ Exibe Botão UI de Interagir ]
                                        │
                                        ▼
                       [ Ao Tocar: Interage APENAS com A ]
```

1. **Filtro de Tag/Interface**: Apenas objetos com o componente/tag `#Interativel` entram no cálculo.
2. **Cálculo da Pontuação do Alvo ($\text{Score}$)**:
   $$\text{Score} = \frac{\cos(\theta)}{\text{Distância}}$$
   Onde $\theta$ é o ângulo entre o centro da tela (vetor para onde o jogador está olhando) e a posição do objeto.
3. **Seleção de Alvo Único**: O objeto com maior $\text{Score}$ é definido como `ActiveInteractionTarget`.
4. **Vínculo Dinâmico do Botão UI**: O botão de pegar/interagir na interface executa a ação **exclusivamente no `ActiveInteractionTarget`**, eliminando completamente conflitos mesmo que os objetos estejam encostados um no outro.
