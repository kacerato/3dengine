# ADR 0002 — Arquivo canônico e índice reconstruível

- Status: aceita
- Data: 2026-07-28

## Contexto

Projetos precisam ser abertos, compartilhados e migrados no futuro. Um banco
proprietário como única fonte dificultaria interoperabilidade; apenas varrer
arquivos em toda recomposição prejudicaria a listagem.

## Decisão

Usar `project.json` versionado como fonte canônica em uma pasta nomeada por UUID.
Room mantém um índice derivado, e DataStore mantém preferências.

Metadados são gravados em arquivo temporário imprevisível no mesmo diretório,
sincronizados e substituídos com `ATOMIC_MOVE`; se o filesystem não oferecer a
operação, o salvamento falha preservando o arquivo anterior. A revisão otimista
impede que um salvamento antigo sobrescreva um novo. Operações de catálogo são
serializadas para que reconciliação e `upsert` não se apaguem mutuamente; o
índice armazena `revision` e rejeita escritores obsoletos.

Nomes visíveis nunca formam caminhos. IDs aceitam somente caracteres seguros,
links simbólicos são rejeitados nos pontos de entrada e o JSON é lido com limite
estrito de 64 KiB. Caminhos internos, como `startScene`, precisam ser relativos
e não podem conter segmentos `.` ou `..`.

## Consequências

- O índice pode ser reconstruído depois de falha do banco.
- Não há atomicidade conjunta entre arquivo e Room; arquivo válido prevalece.
- Migrações futuras precisam declarar transformações de schema.
- SAF e o pacote `.mobileproject` devem validar Zip Slip, tamanho expandido,
quantidade de arquivos, MIME e permissões persistentes antes de serem liberados.
