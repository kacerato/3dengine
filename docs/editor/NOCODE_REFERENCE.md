# NoCode — referência da linguagem visual

## Fonte de verdade atual

O catálogo usado pelo editor Godot atual está em:

```text
godot-patches/modules/mobile_game_studio_nocode/mgs_nocode_catalog.cpp
```

A referência individual gerada está em `docs/nocode/NATIVE_NODE_CATALOG.md` e contém 961 IDs únicos. O catálogo Kotlin abaixo é a fonte histórica da engine anterior, mantida para compatibilidade de importação:

```text
core/model/src/main/kotlin/com/mobilegamestudio/core/model/VisualNodeCatalog.kt
```

Cada `VisualNodeDefinition` contém:

- identificador único;
- título;
- categoria;
- operação executada;
- entradas tipadas;
- saídas tipadas;
- palavras-chave;
- documentação gerada com resumo, entradas, saídas e exemplo.

Isso significa que todos os nós adicionados ao catálogo recebem documentação no mesmo formato. Este documento explica todas as famílias e como interpretar cada definição.

## Arquivos e vínculo

Grafos são persistidos em:

```text
res://visual-graphs/**/*.graph.json
```

Um objeto pode possuir mais de um `VisualGraphComponent`. O componente armazena o caminho relativo do grafo. Mover ou renomear pelo gerenciador atualiza o arquivo e o componente da cena.

## Estrutura de um grafo

```text
VisualGraphDocument
├── schemaVersion
├── graphId
├── name
├── nodes[]
└── connections[]
```

### VisualNode

- `id`: identificador da instância;
- `type`: tipo legado ou `CATALOG`;
- `definitionId`: identificador no catálogo;
- `objectId` e `objectName`: objeto alvo;
- `numberValue` e `textValue`: valores simples legados;
- `positionX` e `positionY`: posição no editor;
- `values`: mapa de propriedades específicas.

### VisualConnection

- `fromNodeId` e `toNodeId`;
- `fromPortId` e `toPortId`;
- porta padrão de fluxo: `flow`.

## Tipos de porta

| Tipo | Uso |
|---|---|
| `FLOW` | ordem de execução |
| `BOOLEAN` | verdadeiro ou falso |
| `NUMBER` | números inteiros ou decimais |
| `TEXT` | texto |
| `VECTOR2` | coordenada 2D |
| `VECTOR3` | posição, direção ou escala 3D |
| `VECTOR4` | quatro valores numéricos |
| `COLOR` | cor e alfa |
| `OBJECT` | referência a objeto da cena |
| `COMPONENT` | referência a componente |
| `ASSET` | referência a asset |
| `LIST` | coleção de valores |
| `ANY` | valor genérico |

Portas marcadas como obrigatórias precisam receber valor ou conexão válida.

## Categorias do catálogo

### Eventos

Iniciam fluxos. Famílias disponíveis:

- ciclo da cena: iniciar, pronta, sair;
- atualização: frame e física;
- objeto: toque, clique, habilitado, desabilitado, criado e destruído;
- entrada: botão, tecla, eixo e ponteiro;
- colisão e trigger: enter, stay e exit;
- animação e áudio: início e conclusão;
- interface: foco e mudança de valor;
- timer;
- rede: conexão e desconexão;
- save: carregado e concluído;
- mundo: carregado e descarregado;
- eventos personalizados;
- alteração de componente.

Eventos normalmente expõem uma saída `FLOW` chamada **Então**.

### Fluxo

Controla ordem e condição:

- sequências de 2, 3, 4, 5, 6, 8, 10 e 12 saídas;
- condição/branch;
- gate;
- executar uma vez;
- executar N vezes;
- while;
- for;
- foreach;
- delay;
- debounce;
- throttle;
- race;
- parallel;
- cancel;
- break;
- continue;
- switch de booleano, número, texto e objeto;
- flip-flop.

### Entrada

Consulta teclado, mouse, toque, gamepad e sensores. Para cada dispositivo existem operações como:

- pressionado;
- solto;
- mantido;
- eixo;
- posição;
- delta;
- pressão;
- contagem;
- disponibilidade;
- nome.

### Matemática

Famílias numéricas:

- soma, subtração, multiplicação, divisão e módulo;
- potência, mínimo, máximo e média;
- `atan2`, logaritmo por base e cópia de sinal;
- absoluto, negativo, raiz, exponencial e logaritmos;
- floor, ceil, round, truncate e fração;
- sinal, seno, cosseno, tangente e inversas;
- graus e radianos;
- saturate, finitude e NaN;
- clamp, lerp, inverse lerp, remap, smoothstep, move towards e random range.

As operações existem para número, inteiro e ângulo quando aplicável.

### Comparação

Compara booleanos, números, textos, vetores, cores, objetos e assets:

- igual e diferente;
- maior, maior ou igual;
- menor, menor ou igual;
- entre e fora;
- aproximadamente igual;
- nulo.

### Vetor

Cria e manipula `Vector2`, `Vector3` e `Vector4`:

- composição e decomposição;
- soma e subtração;
- multiplicação e divisão;
- comprimento e normalização;
- distância;
- dot e cross quando compatível;
- direção;
- lerp;
- projeção e reflexão;
- clamp de magnitude;
- rotação e conversões.

### Cor

- criar cor;
- decompor canais;
- misturar;
- multiplicar;
- ajustar alfa;
- converter RGB/HSV;
- clarear e escurecer;
- comparar;
- converter para texto hexadecimal.

### Texto

- concatenar;
- formatar;
- tamanho;
- substring;
- substituir;
- dividir e juntar;
- maiúsculas e minúsculas;
- trim;
- contém, começa e termina com;
- converter número, booleano e vetor;
- localizar trecho.

### Listas

- criar lista;
- adicionar, inserir e remover;
- obter e definir item;
- tamanho e vazio;
- contém e localizar;
- limpar;
- ordenar e inverter;
- embaralhar;
- primeiro e último;
- fatia;
- combinar;
- filtrar e percorrer.

### Objeto

- obter objeto atual;
- procurar por ID, nome ou tag;
- criar, duplicar e destruir;
- habilitar e desabilitar;
- alterar nome e tag;
- obter pai e filhos;
- adicionar ou remover componente;
- verificar existência.

### Transform

- obter e definir posição;
- mover por delta;
- obter e definir rotação;
- rotacionar por eixo;
- obter e definir escala;
- escala uniforme;
- olhar para alvo;
- transformar ponto local/mundial;
- obter vetores forward, right e up.

### Física

- adicionar força e impulso;
- adicionar torque;
- definir velocidade linear e angular;
- raycast;
- overlap;
- configurar gravidade, massa, atrito e restituição;
- habilitar ou desabilitar corpo;
- consultar contato e normal.

### Veículo

- acelerar, frear e esterçar;
- freio de mão;
- entrar e sair;
- obter velocidade e RPM;
- trocar marcha;
- ligar e desligar motor;
- configurar torque, aderência e suspensão;
- consultar roda em contato;
- resetar veículo.

### Áudio

- tocar, pausar, retomar e parar;
- volume e pitch;
- loop;
- posição 3D;
- fade in e fade out;
- verificar reprodução;
- escolher clip.

### Animação

- tocar e parar;
- pausar e retomar;
- velocidade;
- blend;
- estado atual;
- tempo normalizado;
- trigger e parâmetros;
- transição;
- verificar conclusão.

### Material

- alterar cor base;
- metallic e roughness;
- emissive;
- opacidade;
- textura de cor, normal, roughness/metallic, AO e emissive;
- escala de textura;
- trocar material ou slot;
- ler propriedades.

### Interface

- mostrar e ocultar;
- habilitar e desabilitar;
- texto e imagem;
- cor e opacidade;
- valor de slider/progress;
- foco;
- posição e tamanho;
- criar feedback e mensagem;
- consultar toque.

### Mundo

- carregar e descarregar cena;
- obter terreno;
- consultar altura e inclinação;
- spawn de objeto;
- hora e clima;
- gravidade global;
- origem flutuante;
- ativar região;
- consultar bioma e camada.

### Save game

- salvar e carregar;
- verificar slot;
- apagar slot;
- gravar e ler número, texto, booleano, vetor e lista;
- checkpoint;
- autosave;
- listar saves.

### Tempo

- delta time;
- fixed delta;
- tempo desde início;
- criar, iniciar, pausar e cancelar timer;
- duração;
- repetição;
- escala de tempo;
- timestamp.

### Debug

- log info, warning e error;
- desenhar linha, raio, ponto e caixa;
- medir tempo;
- assert;
- exibir valor;
- contar execução;
- breakpoint lógico.

## Nós legados

Mapeamentos mantidos para compatibilidade:

| VisualNodeType | definitionId atual |
|---|---|
| `ON_START` | `event.scene.start` |
| `ON_TOUCH` | `event.object.touch` |
| `ON_BUTTON_PRESSED` | `event.input.button_pressed` |
| `ROTATE_OBJECT` | `transform.rotate.y` |
| `SET_SCALE` | `transform.scale.uniform` |
| `PRINT_LOG` | `debug.log.info` |
| `SEQUENCE` | `flow.sequence.2` |
| `CATALOG` | usa `definitionId` explícito |

## Como ler a documentação de um nó

Exemplo conceitual:

```text
Título: Rotacionar Y
Categoria: Transform
Operação: transform.rotate.y
Entradas:
- Então: flow
- Objeto: object, obrigatório
- Ângulo: number
Saídas:
- Então: flow
```

O editor deve impedir conexões incompatíveis pelo tipo da porta. O validador também rejeita grafos sem referências válidas ou com caminhos inseguros.

## Criar, mover e excluir

1. Selecione o objeto proprietário.
2. Abra NoCode.
3. Crie o grafo escolhendo pasta e nome.
4. Abra o arquivo pelo explorador.
5. Para reorganizar, use Mover/Renomear.
6. Ao excluir, o arquivo e o `VisualGraphComponent` correspondente são removidos.

Pastas válidas precisam permanecer dentro de `visual-graphs/` e não podem conter travessia de diretório.
