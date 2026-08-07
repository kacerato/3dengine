(() => {
  const $ = (selector, root = document) => root.querySelector(selector);
  const $$ = (selector, root = document) => [...root.querySelectorAll(selector)];

  const progress = $('#scrollProgress');
  const updateProgress = () => {
    if (!progress) return;
    const max = document.documentElement.scrollHeight - innerHeight;
    progress.style.width = `${max > 0 ? (scrollY / max) * 100 : 0}%`;
  };
  addEventListener('scroll', updateProgress, { passive: true });
  updateProgress();

  const searchLayer = $('#searchLayer');
  const searchButton = $('#searchButton');
  const closeSearch = $('#closeSearch');
  const searchInput = $('#globalSearch');
  const searchResults = $('#searchResults');

  const searchable = $$('[data-search-title]').map(section => ({
    id: section.id,
    title: section.dataset.searchTitle || section.id,
    text: section.textContent.replace(/\s+/g, ' ').trim()
  }));

  const escapeHtml = value => String(value).replace(/[&<>"']/g, char => ({
    '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
  }[char]));

  const renderSearch = () => {
    if (!searchResults || !searchInput) return;
    const query = searchInput.value.trim().toLocaleLowerCase('pt-BR');
    const terms = query.split(/\s+/).filter(Boolean);
    const found = searchable
      .filter(item => !terms.length || terms.every(term => `${item.title} ${item.text}`.toLocaleLowerCase('pt-BR').includes(term)))
      .slice(0, 12);

    searchResults.innerHTML = found.length
      ? found.map(item => `<a class="search-result" href="#${escapeHtml(item.id)}"><strong>${escapeHtml(item.title)}</strong><span>abrir seção →</span></a>`).join('')
      : '<div class="search-empty">Nenhuma seção encontrada. Tente “NoCode”, “shader”, “runtime” ou “tema”.</div>';

    $$('.search-result', searchResults).forEach(link => link.addEventListener('click', closeSearchLayer));
  };

  function openSearchLayer() {
    if (!searchLayer) return;
    searchLayer.classList.add('open');
    searchLayer.setAttribute('aria-hidden', 'false');
    renderSearch();
    setTimeout(() => searchInput?.focus(), 30);
  }

  function closeSearchLayer() {
    if (!searchLayer) return;
    searchLayer.classList.remove('open');
    searchLayer.setAttribute('aria-hidden', 'true');
  }

  searchButton?.addEventListener('click', openSearchLayer);
  closeSearch?.addEventListener('click', closeSearchLayer);
  searchInput?.addEventListener('input', renderSearch);
  searchLayer?.addEventListener('click', event => {
    if (event.target === searchLayer) closeSearchLayer();
  });
  addEventListener('keydown', event => {
    if ((event.ctrlKey || event.metaKey) && event.key.toLowerCase() === 'k') {
      event.preventDefault();
      openSearchLayer();
    }
    if (event.key === 'Escape') closeSearchLayer();
  });

  const links = $$('.side-link[href^="#"]');
  const sections = links.map(link => document.querySelector(link.getAttribute('href'))).filter(Boolean);
  if ('IntersectionObserver' in window && sections.length) {
    const observer = new IntersectionObserver(entries => {
      const visible = entries
        .filter(entry => entry.isIntersecting)
        .sort((a, b) => b.intersectionRatio - a.intersectionRatio)[0];
      if (!visible) return;
      links.forEach(link => link.classList.toggle('active', link.getAttribute('href') === `#${visible.target.id}`));
    }, { rootMargin: '-25% 0px -60% 0px', threshold: [0.05, 0.2, 0.5] });
    sections.forEach(section => observer.observe(section));
  }
})();
