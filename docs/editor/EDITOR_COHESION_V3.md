# Editor Cohesion V3

Esta etapa transforma o editor principal em um conjunto de workspaces conectados, em vez de telas e botões isolados.

## Workspaces

- **3D:** hierarquia, viewport, criação, transformação, terreno e Inspector.
- **Código:** arquivos Lua vinculados a objetos e organizados em `res://scripts/lua`.
- **NoCode:** grafos visuais vinculados a objetos em `res://visual-graphs`.
- **Jogo:** inicia e encerra a execução da mesma cena editada.
- **Recursos:** arquivos, modelos, texturas, materiais, áudio e outros assets.

Os painéis laterais de Cena, Arquivos e Inspector não bloqueiam mais o viewport. Eles podem permanecer abertos enquanto a câmera é navegada.

## Controles do viewport

- Arrastar fora do controle de transformação orbita a câmera.
- Pinça altera somente o zoom da câmera.
- O controle inferior transforma somente no eixo X, Y ou Z selecionado.
- O gesto de transformação não é compartilhado com o gesto da câmera.
- Selecionar um objeto não reposiciona automaticamente a câmera.

## Mundo jogável

**Criar mundo jogável** prepara como uma unidade:

1. terreno editável;
2. sol com sombras;
3. câmera principal;
4. jogador com `CharacterController` e collider;
5. joystick de movimento;
6. botão de pulo;
7. script `scripts/lua/starter/player_controller.lua`;
8. grafo `visual-graphs/starter/player_interaction.graph.json`.

A câmera de terceira pessoa é calculada novamente a partir da transformação atual do jogador. Movimento e rotação da visão deslocam a câmera junto com o player.

## Validação automatizada

O runtime possui testes para confirmar que deslocar o jogador desloca também o alvo e a posição da câmera, e que girar a visão altera a órbita sem perder o foco no jogador. O pipeline reaplica as migrações, executa os testes e gera o APK.

## Validação no aparelho

1. Criar mundo jogável.
2. Navegar no viewport sem mover o objeto selecionado.
3. Mover um objeto somente pelo eixo escolhido.
4. Esculpir relevo e retornar para Navegar.
5. Iniciar o Play.
6. Mover o jogador pelo joystick.
7. Arrastar o lado direito para controlar a visão.
8. Pular.
9. Tocar no jogador para validar Lua e NoCode.
10. Parar o Play e confirmar que a cena editável foi preservada.

A compilação e os testes automatizados validam a lógica técnica. Sensibilidade dos gestos, ergonomia e proporção visual continuam dependentes da validação no dispositivo real.
