# World Studio V5 — contrato de UX e validação

## Estado

Esta etapa substitui o dock lateral compacto do World Studio V4 por um workspace dedicado e responsivo. A Fase 4 do plano de autoria continua pausada até a ergonomia desta interface ser validada em aparelho real.

## Princípios obrigatórios

1. O viewport é sempre a região principal.
2. A free cam não recebe botões de enquadramento, presets ou foco automático.
3. Painéis são secundários, roláveis, recolhíveis e nunca reduzem o viewport a uma faixa estreita em celular.
4. Ferramentas mudam conforme modo e seleção.
5. Navegação e edição de superfície não usam o mesmo gesto ao mesmo tempo.
6. Ações descrevem efeito, dependência e próxima etapa.
7. Camadas organizam autoria sem substituir a hierarquia de objetos.

## Estrutura visual

### Cabeçalho

- Voltar ao editor;
- nome do workspace;
- desfazer/refazer;
- salvar;
- jogar/parar.

### Modos de autoria

- Objetos;
- Terreno;
- Materiais;
- Malha;
- Volume.

### Regiões auxiliares

- Estrutura;
- Criar;
- Ações contextuais;
- Ferramentas;
- Assets.

Em telas amplas, os painéis podem ficar encaixados. Em celular paisagem, eles abrem sobre o viewport e podem ser fechados imediatamente. O viewport volta a ocupar toda a região disponível assim que o painel é fechado.

## Estrutura e camadas

O painel Estrutura possui duas visões:

- Camadas: criar, selecionar, renomear, ordenar, ocultar, bloquear, isolar e atribuir a seleção;
- Objetos: objetos agrupados por camada, preservando o tipo e a seleção ativa.

As cores das camadas usam ARGB convencional de 32 bits convertido para `Color(Int)`. É proibido usar `Color(colorArgb.toULong())`.

## Criação

O painel Criar separa:

### Fontes de geometria

- cubo primitivo;
- plano primitivo;
- terreno editável;
- malha editável;
- volume vazio.

### Gameplay e cena

- jogador;
- câmera da cena;
- luz direcional;
- mundo jogável inicial.

Criar produz a fonte inicial. Conversões e edição aparecem no painel Ações após a seleção.

## Ações contextuais

O painel Ações consulta `resolveWorldAuthoringContext()` e apresenta somente operações relacionadas à seleção atual. A ação sugerida recebe destaque, mas nenhuma ação futura é simulada como concluída.

## Ferramentas

### Objetos e malha

- selecionar;
- mover;
- rotacionar;
- escalar.

A transformação continua no controle inferior do viewport. Pinça e órbita pertencem somente à câmera.

### Terreno e materiais

Estados explícitos:

- Navegar;
- Esculpir ou Pintar.

Parâmetros:

- operação;
- raio;
- força;
- altura-alvo;
- falloff.

Ao colocar um segundo dedo durante um stroke, o stroke é cancelado. A câmera continua livre no estado Navegar.

## Validação obrigatória no aparelho

1. Abrir Mundo sem crash.
2. Fechar e abrir Mundo repetidamente.
3. Confirmar que o workspace ocupa a tela inteira.
4. Abrir e fechar Estrutura, Criar, Ações, Ferramentas e Assets.
5. Confirmar que, no celular, os painéis ficam sobre o viewport e não deixam uma faixa estreita permanente.
6. Orbitar, mover e aproximar a free cam com todos os painéis fechados.
7. Abrir um painel, fechá-lo e confirmar que o viewport volta ao tamanho completo.
8. Criar cubo, terreno, malha e volume.
9. Selecionar cada tipo e conferir a mudança das ações contextuais.
10. Alternar Terreno entre Navegar e Esculpir.
11. Ajustar raio e força e aplicar relevo.
12. Confirmar que a pinça não escala objetos.
13. Salvar, fechar e reabrir a cena.
14. Confirmar persistência das camadas e atribuições.

## Gate para a Fase 4

A Fase 4 só começa depois de confirmar:

- ausência de crash;
- viewport utilizável em celular paisagem;
- free cam sem interferência;
- painéis roláveis e recolhíveis;
- fluxo coerente entre criar, selecionar, editar e organizar;
- persistência após reabrir o projeto.
