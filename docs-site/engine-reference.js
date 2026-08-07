(() => {
  const ROOT_API = 'https://api.github.com/repos/kacerato/3dengine/contents/megazord-engine-decompiled?ref=master';
  const BLOB_BASE = 'https://github.com/kacerato/3dengine/blob/master/megazord-engine-decompiled/';
  const TREE_BASE = 'https://github.com/kacerato/3dengine/tree/master/megazord-engine-decompiled/';
  const MAX_SEARCH_RENDER = 1200;
  const MAX_GROUP_PREVIEW = 140;

  const fallback = [
    'assets/Editor/Themes/Default.json',
    'assets/Engine/Graphics/Nodes/bloom.glsl',
    'assets/Engine/Graphics/Nodes/brightness.glsl',
    'assets/Engine/Graphics/Nodes/chromatic_aberration.glsl',
    'assets/Engine/Graphics/Nodes/displacement.glsl',
    'assets/Engine/Graphics/Nodes/eroded_terrain_noise.glsl',
    'assets/Engine/Graphics/Nodes/film_grain_scratch.glsl',
    'assets/Engine/Graphics/Nodes/fresnel.glsl',
    'assets/Engine/Graphics/Nodes/gaussian_blur.glsl',
    'assets/Engine/Graphics/Nodes/lens_distortion.glsl',
    'smali/JAVARuntime/AABB.smali',
    'smali/JAVARuntime/AButton.smali',
    'smali/JAVARuntime/ACheckBox.smali',
    'smali/JAVARuntime/AConstraintLayout.smali',
    'smali/JAVARuntime/AEditText.smali',
    'smali_classes5/com/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel.smali'
  ];

  let files = [];
  let truncatedAreas = [];

  const $ = selector => document.querySelector(selector);
  const escapeHtml = value => String(value ?? '').replace(/[&<>"']/g, char => ({
    '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
  }[char]));

  function rootArea(path) {
    return String(path).split('/')[0] || 'root';
  }

  function kind(path) {
    const lower = path.toLowerCase();
    if (lower.endsWith('.smali')) return 'SMALI';
    if (lower.endsWith('.glsl') || lower.endsWith('.vert') || lower.endsWith('.frag')) return 'SHADER';
    if (lower.endsWith('.json')) return 'JSON';
    if (lower.endsWith('.xml')) return 'XML';
    if (lower.endsWith('.so')) return 'NATIVE';
    if (/\.(png|jpg|jpeg|webp|svg)$/i.test(lower)) return 'IMAGE';
    if (/\.(obj|glb|gltf|mtl)$/i.test(lower)) return 'MODEL';
    if (/\.(ttf|otf)$/i.test(lower)) return 'FONT';
    if (/\.(txt|md|properties|cfg|ini)$/i.test(lower)) return 'TEXT';
    return (lower.split('.').pop() || 'FILE').toUpperCase().slice(0, 10);
  }

  function githubLink(path) {
    return `${BLOB_BASE}${encodeURI(path)}`;
  }

  function matches() {
    const query = ($('#dumpSearch')?.value || '').trim().toLocaleLowerCase('pt-BR');
    const area = $('#dumpArea')?.value || '';
    const terms = query.split(/\s+/).filter(Boolean);
    return files.filter(path => {
      if (area && rootArea(path) !== area) return false;
      if (!terms.length) return true;
      const haystack = `${path} ${kind(path)}`.toLocaleLowerCase('pt-BR');
      return terms.every(term => haystack.includes(term));
    });
  }

  function row(path) {
    return `<div class="file-row"><span class="kind">${escapeHtml(kind(path))}</span><code>${escapeHtml(path)}</code><a href="${githubLink(path)}" target="_blank" rel="noreferrer">ABRIR ↗</a></div>`;
  }

  function render() {
    const found = matches();
    const query = ($('#dumpSearch')?.value || '').trim();
    const groups = new Map();
    found.forEach(path => {
      const area = rootArea(path);
      if (!groups.has(area)) groups.set(area, []);
      groups.get(area).push(path);
    });

    let rendered = 0;
    const blocks = [];
    [...groups.entries()].sort(([a], [b]) => a.localeCompare(b)).forEach(([area, paths]) => {
      const cap = query ? Math.max(0, Math.min(paths.length, MAX_SEARCH_RENDER - rendered)) : Math.min(paths.length, MAX_GROUP_PREVIEW);
      if (cap <= 0) return;
      rendered += cap;
      const hidden = paths.length - cap;
      blocks.push(`<details class="file-group" ${query ? 'open' : ''}>
        <summary><b>${escapeHtml(area)}</b><span>${paths.length.toLocaleString('pt-BR')} arquivo(s)</span></summary>
        <div class="file-list">${paths.slice(0, cap).map(row).join('')}${hidden > 0 ? `<div class="file-row"><span class="kind">INFO</span><code>+ ${hidden.toLocaleString('pt-BR')} arquivo(s) nesta área. Use a busca para localizar qualquer caminho sem carregar toda a lista no DOM.</code><a href="${TREE_BASE}${encodeURI(area)}" target="_blank" rel="noreferrer">PASTA ↗</a></div>` : ''}</div>
      </details>`);
    });

    $('#dumpGroups').innerHTML = blocks.length ? blocks.join('') : '<div class="reference-empty">Nenhum arquivo corresponde aos filtros.</div>';
    $('#dumpCount').textContent = `${found.length.toLocaleString('pt-BR')} resultado(s)`;

    const status = $('#dumpStatus');
    if (status) {
      const extra = truncatedAreas.length ? ` Atenção: o GitHub marcou como truncadas as áreas ${truncatedAreas.join(', ')}.` : '';
      status.textContent = `${files.length.toLocaleString('pt-BR')} arquivos estão no índice em memória. ${rendered.toLocaleString('pt-BR')} estão renderizados agora; use a busca para acessar os demais.${extra}`;
    }
  }

  function setupFilters() {
    const areas = [...new Set(files.map(rootArea))].sort((a, b) => a.localeCompare(b));
    const select = $('#dumpArea');
    select.innerHTML = '<option value="">Todas as áreas</option>';
    areas.forEach(area => select.add(new Option(area, area)));
    $('#dumpFiles').textContent = files.length.toLocaleString('pt-BR');
    $('#dumpAreas').textContent = areas.length.toLocaleString('pt-BR');
    $('#dumpSmali').textContent = files.filter(path => path.endsWith('.smali')).length.toLocaleString('pt-BR');
  }

  async function loadTree() {
    try {
      const rootResponse = await fetch(ROOT_API, { headers: { Accept: 'application/vnd.github+json' } });
      if (!rootResponse.ok) throw new Error(`GitHub API ${rootResponse.status}`);
      const root = await rootResponse.json();
      const rootItems = Array.isArray(root) ? root : [];
      const collected = [];
      const directories = [];

      rootItems.forEach(item => {
        if (item.type === 'file') collected.push(item.name);
        if (item.type === 'dir' && item.git_url) directories.push(item);
      });

      const results = await Promise.allSettled(directories.map(async item => {
        const response = await fetch(`${item.git_url}?recursive=1`, { headers: { Accept: 'application/vnd.github+json' } });
        if (!response.ok) throw new Error(`${item.name}: HTTP ${response.status}`);
        const data = await response.json();
        if (data.truncated) truncatedAreas.push(item.name);
        return (data.tree || [])
          .filter(entry => entry.type === 'blob')
          .map(entry => `${item.name}/${entry.path}`);
      }));

      results.forEach(result => {
        if (result.status === 'fulfilled') collected.push(...result.value);
      });

      files = [...new Set(collected)].sort((a, b) => a.localeCompare(b, 'en'));
      if (!files.length) throw new Error('árvore vazia');
    } catch (error) {
      files = [...fallback];
      const status = $('#dumpStatus');
      if (status) status.textContent = `Não foi possível carregar a árvore completa (${error.message}). Exibindo um índice mínimo de fallback.`;
    }

    setupFilters();
    render();
  }

  $('#dumpSearch')?.addEventListener('input', render);
  $('#dumpArea')?.addEventListener('change', render);
  loadTree();
})();
