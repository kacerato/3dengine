from pathlib import Path

source_path = Path("tools/apply_world_authoring_v2.py")
source = source_path.read_text(encoding="utf-8")
marker = 'Path("docs/editor/WORLD_AUTHORING_V2.md").write_text('
if marker not in source:
    raise RuntimeError("World authoring documentation marker not found")
source = source.split(marker, 1)[0]
source += '''Path("docs/editor/WORLD_AUTHORING_V2.md").write_text(
    """# World Authoring V2

O fluxo principal foi reorganizado em Cena, Criar, Mundo, Assets, Viewport e Inspector.

## Fluxo validável

1. Use **Criar mundo jogável** para preparar terreno, iluminação, câmera, jogador, joystick e botão de pulo.
2. Em **Terreno**, mantenha **Navegar** ativo para posicionar a câmera.
3. Ative **Esculpir** somente durante o traço.
4. Escolha Elevar, Escavar, Suavizar ou Nivelar e ajuste raio/força no Inspector.
5. Em **Textura**, selecione uma camada e aplique imagens pelo dock de Assets.
6. Toque em **Jogar** para validar movimento, câmera e pulo.

A câmera orbital do editor é preservada ao entrar e sair do Play. O terreno não força mais visão superior.
""",
    encoding="utf-8",
)
'''
exec(compile(source, str(source_path), "exec"))
