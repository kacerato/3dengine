# World Authoring V2

O fluxo principal foi reorganizado em Cena, Criar, Mundo, Assets, Viewport e Inspector.

## Fluxo validável

1. Use **Criar mundo jogável** para preparar terreno, iluminação, câmera, jogador, joystick e botão de pulo.
2. Em **Terreno**, mantenha **Navegar** ativo para posicionar a câmera.
3. Ative **Esculpir** somente durante o traço.
4. Escolha Elevar, Escavar, Suavizar ou Nivelar e ajuste raio/força no Inspector.
5. Em **Textura**, selecione uma camada e aplique imagens pelo dock de Assets.
6. Toque em **Jogar** para validar movimento, câmera e pulo.

A câmera orbital do editor é preservada ao entrar e sair do Play. O terreno não força mais visão superior.
