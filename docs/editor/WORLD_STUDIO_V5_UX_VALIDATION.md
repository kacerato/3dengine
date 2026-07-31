# World Studio V5 — contrato histórico de UX

> **ESTADO: REPROVADA E SUPERADA PELA REFOUNDATION V6**
>
> A V5 corrigiu o crash ARGB, restaurou a free cam e voltou a usar um workspace dedicado. Entretanto, foi reprovada na validação funcional porque permitia estados contraditórios entre toolset, seleção, recomendação e ferramenta ativa.
>
> Caso comprovado em aparelho: `Volume` aparecia ativo, `Terreno editável 5` continuava selecionado, a barra recomendava `Moldar relevo` e nenhuma ferramenta de Volume era iniciada.

## Situação após a R1

A R1 da V6 foi concluída e tornou essa contradição impossível no domínio:

- toolset, ferramenta, capabilities e breadcrumb derivam de `EditorContextState`;
- `Volume` não pode ficar ativo sobre Terrain;
- alvo incompatível gera escolha, criação, conversão ou cancelamento;
- conversões alteram documento, seleção e ferramenta atomicamente;
- Undo restaura documento e contexto coerente;
- `SceneDocument` e `WorkspaceViewModel` já estão integrados ao reducer;
- testes de domínio, testes Android e compilação passaram.

A interface visual V5 ainda permanece temporariamente na branch, mas não deve ser estendida nem tratada como fundação da V6. O shell substituto será construído na R2 e conectado aos toolsets na R3.

## Motivo da reprovação

A interface V5 mantinha estados independentes para:

- modo superior;
- seleção;
- painel lateral;
- ferramenta ativa;
- recomendação contextual;
- interação do viewport.

Por isso, combinações inválidas eram representáveis. A correção não é outro rearranjo de botões: é a máquina de estados já implementada na R1 e o shell derivado que será construído na R2/R3.

## Partes preservadas

- workspace dedicado como direção de produto;
- viewport como região principal;
- free cam sem presets artificiais;
- painéis roláveis e recolhíveis;
- ARGB das camadas convertido com `Color(Int)`;
- pinça sem escalar objetos;
- segundo dedo cancelando stroke;
- camadas persistentes;
- `SceneDocument` e histórico transacional.

## Partes descartadas

- `Objetos`, `Terreno`, `Materiais`, `Malha` e `Volume` como simples estado visual local;
- `Criar`, `Ações` e `Ferramentas` como abas globais equivalentes;
- necessidade de clicar no toolset e depois abrir Ferramentas;
- recomendação contextual independente do toolset;
- painel monolítico como autoridade das regras;
- possibilidade de toolset incompatível permanecer ativo;
- qualquer nova funcionalidade construída diretamente sobre `WorldStudioWorkspaceV5.kt`.

---

## Registro do contrato testado e rejeitado

### Princípios originalmente propostos

1. O viewport seria a região principal.
2. A free cam não receberia presets ou foco automático.
3. Painéis seriam secundários e recolhíveis.
4. Ferramentas deveriam mudar conforme modo e seleção.
5. Navegação e edição de superfície não usariam o mesmo gesto.
6. Ações descreveriam efeito, dependência e próxima etapa.
7. Camadas organizariam a autoria sem substituir a hierarquia.

Os princípios gerais permanecem válidos, mas a implementação V5 não os garantiu estruturalmente.

### Estrutura visual histórica

- Header;
- abas Objetos, Terreno, Materiais, Malha e Volume;
- abas Estrutura, Criar, Ações, Ferramentas e Assets;
- Context Bar;
- viewport;
- status inferior.

A falha foi tratar toolsets e regiões auxiliares como botões equivalentes, deixando a ferramenta real em um estado separado.

### Validação histórica

A V5 foi testada em aparelho e reprovada após reproduzir:

```text
Volume ativo visualmente
+ Terrain selecionado
+ recomendação de Terrain
+ nenhuma ferramenta de Volume
```

Esse caso é agora um teste de regressão obrigatório da V6.

## Referências atuais

- `WORLD_STUDIO_V6_REFOUNDATION.md` — arquitetura e fases R0–R12;
- `WORLD_STUDIO_V4_IMPLEMENTATION_STATUS.md` — estado real da implementação;
- `../architecture/ADR-0001_EDITOR_TECH_STACK.md` — decisão de stack e fronteiras.
