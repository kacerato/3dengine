# Gestos e navegação

## Regra principal

Navegação e edição não usam o mesmo gesto ao mesmo tempo. O workspace atual determina o comportamento do toque.

## Navegar

- arrastar com um dedo: orbitar a câmera;
- gesto de dois dedos: deslocar o alvo;
- pinça: aproximar ou afastar;
- tocar em objeto: selecionar quando permitido pelo contexto.

## Moldar terreno

- tocar e arrastar: aplicar pincel ao terreno;
- o cursor circular indica raio;
- a câmera muda para uma vista superior de precisão;
- a órbita é desativada enquanto o pincel está ativo;
- ao terminar o gesto, o traço é confirmado como uma operação.

## Pintar terreno

- tocar e arrastar: pintar o peso da camada ativa;
- raio e opacidade são definidos no inspector;
- o gesto não move a câmera.

## Objetos

- tocar no viewport ou na hierarquia: selecionar;
- gizmo X, Y e Z: mover, girar ou escalar;
- inspector: ajuste fino por eixo;
- botão de reset: volta posição/rotação para `0` ou escala para `1`.

## Malha

No painel de projeção superior:

- tocar em um ponto: selecionar vértice;
- arrastar ponto: mover nos eixos X e Z;
- inspector: mover X, Y ou Z em incrementos;
- seleção de face: feita pela lista numerada;
- extrusão: usa a face ativa.

## Volume

- escolha o eixo X, Y ou Z;
- escolha a fatia;
- toque ou arraste na grade: aplica pincel esférico no volume;
- Add preenche;
- Subtract escava;
- Smooth suaviza.

## Preview do jogo

No modo Play:

- joystick envia eixos de movimento;
- arrastar a área de visão envia delta de câmera;
- botões de toque emitem eventos virtuais;
- controles de edição ficam desabilitados.

## Desfazer e refazer

- cada transformação é registrada no histórico;
- um traço inteiro de terreno é uma entrada;
- operações de extrusão, subdivisão e volume são entradas separadas;
- o histórico mantém até 50 estados.

## Evitar conflitos

Quando um gesto parecer controlar a ferramenta errada:

1. confirme o workspace ativo;
2. use Navegar para câmera;
3. use Moldar ou Textura somente para terreno;
4. use Objetos somente para transformação completa;
5. use Malha para vértices/faces;
6. use Volume para densidade 3D.
