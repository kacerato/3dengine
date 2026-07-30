# Lua e gerenciamento de arquivos

## Local dos scripts

Scripts Lua ficam em:

```text
res://scripts/lua/**/*.lua
```

O caminho armazenado no componente é relativo ao projeto, por exemplo:

```text
scripts/lua/vehicles/door-controller.lua
```

## Ligação com objetos

O `LuaScriptComponent` liga um arquivo a um objeto da cena. Um mesmo objeto pode possuir vários scripts. O explorador reúne todos os caminhos encontrados nos componentes e mostra:

- nome do arquivo;
- pasta;
- objeto proprietário;
- caminho completo em `res://`.

## Criar um script

1. Selecione o objeto que receberá a lógica.
2. Abra o gerenciador de lógica.
3. Escolha **Lua**.
4. Selecione uma pasta sugerida ou informe uma pasta dentro de `scripts/lua/`.
5. Defina o nome.
6. Confirme.

A extensão `.lua` é adicionada automaticamente. Caracteres inseguros são substituídos e o caminho é validado antes da gravação.

## Pastas sugeridas

```text
scripts/lua/gameplay/
scripts/lua/vehicles/
scripts/lua/ui/
scripts/lua/world/
```

Subpastas adicionais são permitidas desde que continuem sob `scripts/lua/`.

## Abrir um script específico

Selecionar um arquivo no explorador:

1. seleciona o objeto proprietário;
2. define o caminho ativo;
3. carrega o conteúdo do arquivo;
4. abre o editor Lua;
5. limpa diagnósticos antigos.

Isso evita abrir sempre o primeiro script do objeto.

## Mover ou renomear

A operação de mover:

1. valida o novo caminho;
2. move o arquivo no armazenamento do projeto;
3. atualiza apenas o `LuaScriptComponent` que apontava para o caminho antigo;
4. reabre o arquivo no novo caminho;
5. salva a alteração da cena.

## Excluir

A exclusão remove:

- o arquivo físico;
- o componente que o referencia;
- o estado do editor, caso o arquivo excluído estivesse aberto.

## Salvamento

O editor mantém:

- `scriptSource`: conteúdo atual;
- `scriptPath`: caminho ativo;
- `isScriptDirty`: indica alterações não gravadas;
- `isSavingScript`: bloqueia gravações concorrentes;
- `scriptDiagnostics`: erros e avisos.

O limite atual do editor é 256 KiB por script. Scripts maiores devem ser divididos em módulos.

## Segurança de caminho

Não são aceitos:

- caminhos absolutos;
- `../`;
- saída da pasta raiz de scripts;
- nomes vazios;
- caminhos inválidos segundo `SafeProjectPath`.

## Organização recomendada

```text
scripts/lua/
├── gameplay/
│   ├── player.lua
│   └── interaction.lua
├── vehicles/
│   ├── controller.lua
│   ├── doors.lua
│   └── dashboard.lua
├── world/
│   ├── day-night.lua
│   └── traffic.lua
└── ui/
    ├── hud.lua
    └── menus.lua
```

Evite scripts genéricos chamados `script1.lua`. Use nomes que expressem responsabilidade e mantenha uma função principal por arquivo.
