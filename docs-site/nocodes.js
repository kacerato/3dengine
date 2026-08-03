(() => {
  const catalog = window.MGS_NOCODE_CATALOG || [];
  const $ = selector => document.querySelector(selector);
  const escapeHtml = value => String(value).replace(/[&<>"']/g, char => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[char]));
  const categories = [...new Set(catalog.map(item => item.category))].sort((a,b)=>a.localeCompare(b,'pt-BR'));
  const category = $('#nocodeCategory');
  categories.forEach(name => category.add(new Option(name, name)));
  $('#nocodeTotal').textContent = catalog.length.toLocaleString('pt-BR');
  $('#nocodeCategories').textContent = categories.length;
  let limit = 30;

  const matches = () => {
    const query = $('#nocodeSearch').value.trim().toLocaleLowerCase('pt-BR');
    return catalog.filter(item => (!category.value || item.category === category.value) && (!query || Object.values(item).join(' ').toLocaleLowerCase('pt-BR').includes(query)));
  };
  const render = () => {
    const found = matches();
    $('#nocodeGrid').innerHTML = found.slice(0,limit).map(item => `<details class="nocode-card">
      <summary><span>${escapeHtml(item.category)}</span><b>${escapeHtml(item.title)}</b><code>${escapeHtml(item.id)}</code></summary>
      <div><h4>QUANDO E POR QUE USAR</h4><p>${escapeHtml(item.purpose)}</p><h4>COMO CONFIGURAR</h4><p>${escapeHtml(item.inputs)}</p><h4>O QUE O BLOCO ENTREGA</h4><p>${escapeHtml(item.outputs)}</p><h4>EXEMPLO DE MECÂNICA</h4><p class="nocode-example">${escapeHtml(item.example)}</p><h4>SE NÃO FUNCIONAR</h4><p>${escapeHtml(item.errors)}</p></div>
    </details>`).join('');
    $('#nocodeCount').textContent = `${Math.min(limit,found.length)} de ${found.length} blocos`;
    $('#nocodeMore').hidden = limit >= found.length;
  };
  const reset = () => { limit = 30; render(); };
  $('#nocodeSearch').addEventListener('input', reset);
  category.addEventListener('change', reset);
  $('#nocodeMore').addEventListener('click', () => { limit += 30; render(); });
  render();
})();
