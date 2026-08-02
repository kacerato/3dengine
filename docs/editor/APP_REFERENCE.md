# Mobile Game Studio — referência do aplicativo

## Identidade

O pacote Android é `com.mobilegamestudio.editor`. Launcher, splash Android, splash interno, Project Manager e barra de título usam Mobile Game Studio. Nomes internos Godot permanecem apenas onde são necessários à compatibilidade e à licença MIT.

## Áreas principais

- **Cena:** hierarquia real de nós.
- **2D/3D:** viewports e ferramentas compatíveis com Godot.
- **Script:** GDScript e recursos textuais/JSON.
- **Jogo:** execução e depuração.
- **NoCode:** editor visual nativo.
- **Biblioteca de Recursos:** assets do projeto.

## Barra NoCode

- **Novo:** cria `Ao iniciar → Mostrar no log`.
- **Importar:** abre schema 1/2 e organiza o fluxo.
- **Salvar:** valida e persiste posições, valores e conexões.
- **Validar:** apresenta erro ou contagem válida.
- **Organizar:** executa o layout automático do `GraphEdit`.
- **Biblioteca:** 961 operações agrupadas, com busca por título, ID e categoria.

## Layout mobile

- alvos de toque ampliados;
- biblioteca em 88% da tela;
- cabeçalhos temáticos roxos;
- minimapa, zoom, grade e desconexão;
- textos longos com reticências;
- painel inferior redimensionável.

Blocos de cena resolvem `target_path` contra o `SceneTree` real e validam o tipo Godot esperado.

## Referência de UX

A biblioteca categorizada, o fluxo evento→ação e a documentação por entradas/saídas foram comparados com a documentação pública do [ITsMagic Engine 2.0](https://itsmagic.com.br/documentation/docs/intro/). A implementação permanece nativa em Godot e não copia código ou assets proprietários.
