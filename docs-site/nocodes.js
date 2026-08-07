(() => {
  const TREE_API = 'https://api.github.com/repos/ITsMagic-Software/Documentation/git/trees/main?recursive=1';
  const RAW_BASE = 'https://raw.githubusercontent.com/ITsMagic-Software/Documentation/main/';
  const BLOB_BASE = 'https://github.com/ITsMagic-Software/Documentation/blob/main/';
  const DECOMPILED_NOCODE = 'megazord-engine-decompiled/smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali';
  const DECOMPILED_RUNTIME = 'megazord-engine-decompiled/smali/JAVARuntime/';

  const fallback = [
    ['Actions/Buttons/IsKeyDownBranch.mdx', 'Is Key Down'],
    ['Actions/Buttons/IsKeyPressedBranch.mdx', 'Is Key Pressed'],
    ['Actions/Buttons/IsKeyUpBranch.mdx', 'Is Key Up'],
    ['Actions/Audio/Play3DAudioOnce.mdx', 'Play 3D Audio Once'],
    ['Actions/Audio/Play3DAudioInLoop.mdx', 'Play 3D Audio In Loop'],
    ['Actions/Component/ComponentMethod.mdx', 'Component Method'],
    ['Actions/Component/Lifecycle/DestroyComponent.mdx', 'Destroy Component'],
    ['Actions/Component/Properties/GetComponentEnabled.mdx', 'Get Component Enabled'],
    ['Actions/Component/Properties/GetComponentObject.mdx', 'Get Component Object'],
    ['Actions/Component/Properties/GetComponentTitle.mdx', 'Get Component Title'],
    ['Actions/Component/Properties/SetComponentEnabled.mdx', 'Set Component Enabled'],
    ['Actions/Component/Queries/PickComponent.mdx', 'Pick Component'],
    ['Actions/DayNight/GetTimeOfDay.mdx', 'Get Time Of Day'],
    ['Actions/DayNight/SetTimeOfDay.mdx', 'Set Time Of Day'],
    ['Actions/DayNight/SetDayNightSpeed.mdx', 'Set Day Night Speed']
  ].map(([relative, title], index) => fromPath(`docs/nocode/${relative}`, index + 1, title, 'fallback'));

  let catalog = [];
  let limit = 36;
  const detailCache = new Map();

  const $ = selector => document.querySelector(selector);
  const escapeHtml = value => String(value ?? '').replace(/[&<>"']/g, char => ({
    '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
  }[char]));

  function humanize(value) {
    return String(value)
      .replace(/\.(md|mdx)$/i, '')
      .replace(/([a-z0-9])([A-Z])/g, '$1 $2')
      .replace(/([A-Z])([A-Z][a-z])/g, '$1 $2')
      .replace(/[_-]+/g, ' ')
      .replace(/\b3 D\b/g, '3D')
      .replace(/\b2 D\b/g, '2D')
      .replace(/\bUi\b/g, 'UI')
      .replace(/\bUrl\b/g, 'URL')
      .replace(/\bApi\b/g, 'API')
      .trim();
  }

  function fromPath(path, number, forcedTitle, origin = 'catalog') {
    const relative = path.replace(/^docs\/nocode\//, '');
    const parts = relative.split('/');
    const file = parts.pop();
    const category = parts.shift() || 'Geral';
    const menu = [category, ...parts].join('/');
    return {
      number,
      title: forcedTitle || humanize(file),
      category,
      menu,
      path,
      id: relative.replace(/\.(md|mdx)$/i, '').replaceAll('/', '.'),
      origin
    };
  }

  function normalizeTree(tree) {
    return tree
      .filter(item => item.type === 'blob' && /^docs\/nocode\/.+\.mdx$/i.test(item.path))
      .filter(item => !item.path.includes('/_category_'))
      .sort((a, b) => a.path.localeCompare(b.path, 'en'))
      .map((item, index) => fromPath(item.path, index + 1));
  }

  function categories() {
    return [...new Set(catalog.map(item => item.category))].sort((a, b) => a.localeCompare(b, 'pt-BR'));
  }

  function fillCategories() {
    const select = $('#nocodeCategory');
    if (!select) return;
    select.innerHTML = '<option value="">Todas as categorias</option>';
    categories().forEach(name => select.add(new Option(name, name)));
  }

  function matches() {
    const query = ($('#nocodeSearch')?.value || '').trim().toLocaleLowerCase('pt-BR');
    const selected = $('#nocodeCategory')?.value || '';
    const terms = query.split(/\s+/).filter(Boolean);
    return catalog.filter(item => {
      if (selected && item.category !== selected) return false;
      if (!terms.length) return true;
      const haystack = `${item.title} ${item.category} ${item.menu} ${item.path} ${item.id}`.toLocaleLowerCase('pt-BR');
      return terms.every(term => haystack.includes(term));
    });
  }

  function statusText(item) {
    return item.origin === 'fallback' ? 'Fallback local' : 'Catálogo oficial';
  }

  function statusClass(item) {
    return item.origin === 'fallback' ? 'status-fallback' : 'status-catalog';
  }

  function runtimeHint(item) {
    const categoryHints = {
      Actions: 'Ações tendem a resolver chamadas no runtime e em componentes da engine.',
      Input: 'Nós de entrada se correlacionam com a camada de input e controles do runtime.',
      Events: 'Eventos iniciam fluxos e entregam dados para branches e ações.',
      SaveGame: 'Persistência deve ser rastreada pelo executor e APIs de armazenamento disponíveis no runtime.',
      Vector: 'Operações vetoriais podem ser cruzadas com tipos matemáticos e geometria do JAVARuntime.',
      Color: 'Operações de cor se relacionam aos tipos de Color e ao pipeline gráfico.',
      Math: 'Operações matemáticas são nós puros e podem não gerar uma classe 1:1 no dump.',
      Flow: 'Controle de fluxo pertence ao executor do grafo; a classe concreta pode estar fora da árvore versionada.'
    };
    return categoryHints[item.category] || 'O mapeamento 1:1 do nó para uma classe Smali não é assumido quando a implementação não está presente na árvore versionada.';
  }

  function card(item) {
    return `<details class="nocode-card" data-path="${escapeHtml(item.path)}">
      <summary>
        <span>${escapeHtml(item.menu)}</span>
        <b>${escapeHtml(item.title)}</b>
        <code>${escapeHtml(item.id)}</code>
        <em class="runtime-status ${statusClass(item)}">${statusText(item)}</em>
      </summary>
      <div class="node-detail" data-node-detail>
        <p class="node-detail-loading">Abra este card para carregar Purpose, Inputs e Outputs do arquivo MDX correspondente.</p>
        <h4>FONTE NO EDITOR DECOMPILADO</h4>
        <p><code>${escapeHtml(DECOMPILED_NOCODE)}</code></p>
        <h4>CAMADA DE RUNTIME</h4>
        <p>${escapeHtml(runtimeHint(item))}</p>
        <p><code>${escapeHtml(DECOMPILED_RUNTIME)}</code></p>
        <a class="node-source-link" href="${BLOB_BASE}${encodeURI(item.path)}" target="_blank" rel="noreferrer">ABRIR MDX ORIGINAL ↗</a>
      </div>
    </details>`;
  }

  function attachDetailLoaders() {
    document.querySelectorAll('.nocode-card').forEach(details => {
      if (details.dataset.loaderAttached) return;
      details.dataset.loaderAttached = '1';
      details.addEventListener('toggle', () => {
        if (!details.open || details.dataset.loaded) return;
        details.dataset.loaded = '1';
        loadDetails(details.dataset.path, details.querySelector('[data-node-detail]'));
      });
    });
  }

  function render() {
    const found = matches();
    const grid = $('#nocodeGrid');
    if (!grid) return;
    grid.innerHTML = found.slice(0, limit).map(card).join('');
    const count = $('#nocodeCount');
    if (count) count.textContent = `${Math.min(limit, found.length)} de ${found.length} nós`;
    const more = $('#nocodeMore');
    if (more) more.hidden = limit >= found.length;
    attachDetailLoaders();
  }

  function reset() {
    limit = 36;
    render();
  }

  function extractSection(text, heading) {
    const pattern = new RegExp(`^##\\s+${heading}\\s*$([\\s\\S]*?)(?=^##\\s+|\\Z)`, 'im');
    const match = text.match(pattern);
    return match ? match[1].trim() : '';
  }

  function stripInlineMarkdown(value) {
    return value
      .replace(/`([^`]+)`/g, '$1')
      .replace(/\*\*([^*]+)\*\*/g, '$1')
      .replace(/\[([^\]]+)\]\([^\)]+\)/g, '$1')
      .replace(/<[^>]+>/g, '')
      .trim();
  }

  function paragraphHtml(section) {
    if (!section) return '<p>Não informado neste arquivo.</p>';
    const cleaned = section
      .split('\n')
      .filter(line => !line.trim().startsWith('|'))
      .filter(line => !/^import\s/.test(line.trim()))
      .join(' ')
      .replace(/\s+/g, ' ')
      .trim();
    return `<p>${escapeHtml(stripInlineMarkdown(cleaned) || 'Não informado neste arquivo.')}</p>`;
  }

  function tableHtml(section) {
    const lines = section.split('\n').map(line => line.trim()).filter(line => line.startsWith('|'));
    if (lines.length < 2) return '<p>Sem tabela de pinos declarada neste arquivo.</p>';
    const rows = lines
      .filter(line => !/^\|?\s*:?-{3,}/.test(line.replace(/^\|/, '')))
      .map(line => line.replace(/^\||\|$/g, '').split('|').map(cell => stripInlineMarkdown(cell.trim())));
    if (!rows.length) return '<p>Sem tabela de pinos declarada neste arquivo.</p>';
    const header = rows.shift();
    return `<div style="overflow:auto"><table class="node-io-table"><thead><tr>${header.map(cell => `<th>${escapeHtml(cell)}</th>`).join('')}</tr></thead><tbody>${rows.map(row => `<tr>${row.map(cell => `<td>${escapeHtml(cell)}</td>`).join('')}</tr>`).join('')}</tbody></table></div>`;
  }

  function parseMdx(text, itemPath) {
    const title = text.match(/^#\s+(.+)$/m)?.[1]?.trim() || humanize(itemPath.split('/').pop());
    const menu = text.match(/\*\*Menu:\*\*\s*`([^`]+)`/i)?.[1]?.trim() || itemPath.replace(/^docs\/nocode\//, '').split('/').slice(0, -1).join('/');
    const purpose = extractSection(text, 'Purpose');
    const inputs = extractSection(text, 'Inputs');
    const outputs = extractSection(text, 'Outputs');
    return { title, menu, purpose, inputs, outputs };
  }

  async function loadDetails(path, target) {
    if (!target) return;
    try {
      let detail = detailCache.get(path);
      if (!detail) {
        const response = await fetch(`${RAW_BASE}${encodeURI(path)}`, { headers: { Accept: 'text/plain' } });
        if (!response.ok) throw new Error(`HTTP ${response.status}`);
        detail = parseMdx(await response.text(), path);
        detailCache.set(path, detail);
      }
      const item = catalog.find(candidate => candidate.path === path) || fromPath(path, 0);
      target.innerHTML = `
        <h4>NÓ</h4><p><strong>${escapeHtml(detail.title)}</strong> · menu <code>${escapeHtml(detail.menu)}</code></p>
        <h4>PURPOSE</h4>${paragraphHtml(detail.purpose)}
        <h4>INPUTS</h4>${tableHtml(detail.inputs)}
        <h4>OUTPUTS</h4>${tableHtml(detail.outputs)}
        <h4>CORRELAÇÃO COM O DUMP</h4><p>${escapeHtml(runtimeHint(item))}</p>
        <p><code>${escapeHtml(DECOMPILED_NOCODE)}</code><br><code>${escapeHtml(DECOMPILED_RUNTIME)}</code></p>
        <a class="node-source-link" href="${BLOB_BASE}${encodeURI(path)}" target="_blank" rel="noreferrer">ABRIR MDX ORIGINAL ↗</a>`;
    } catch (error) {
      target.innerHTML = `<h4>DETALHES INDISPONÍVEIS</h4><p>Não foi possível carregar o MDX agora (${escapeHtml(error.message)}). O nó continua listado pelo índice.</p><p><code>${escapeHtml(DECOMPILED_NOCODE)}</code></p><a class="node-source-link" href="${BLOB_BASE}${encodeURI(path)}" target="_blank" rel="noreferrer">ABRIR FONTE ↗</a>`;
    }
  }

  async function loadCatalog() {
    const status = $('#nocodeStatus');
    try {
      const response = await fetch(TREE_API, { headers: { Accept: 'application/vnd.github+json' } });
      if (!response.ok) throw new Error(`GitHub API ${response.status}`);
      const data = await response.json();
      const loaded = normalizeTree(data.tree || []);
      if (!loaded.length) throw new Error('nenhum MDX encontrado');
      catalog = loaded;
      if (status) status.innerHTML = `<strong>Índice carregado:</strong> ${catalog.length.toLocaleString('pt-BR')} arquivos MDX encontrados em <code>docs/nocode</code>. A documentação oficial informa 295 NoCode Nodes; o número exibido acima vem da árvore atual.`;
    } catch (error) {
      catalog = fallback;
      if (status) status.innerHTML = `<strong>Modo fallback:</strong> a árvore completa não pôde ser carregada (${escapeHtml(error.message)}). Exibindo ${fallback.length} nós mínimos; recarregue a página para tentar novamente.`;
    }

    fillCategories();
    $('#nocodeTotal').textContent = catalog.length.toLocaleString('pt-BR');
    $('#nocodeCategories').textContent = categories().length;
    render();
  }

  $('#nocodeSearch')?.addEventListener('input', reset);
  $('#nocodeCategory')?.addEventListener('change', reset);
  $('#nocodeMore')?.addEventListener('click', () => { limit += 36; render(); });

  loadCatalog();
})();
