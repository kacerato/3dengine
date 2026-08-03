(() => {
  const $ = (selector, root = document) => root.querySelector(selector);
  const $$ = (selector, root = document) => [...root.querySelectorAll(selector)];

  // Scroll progress and active navigation
  const progress = $('#scrollProgress');
  const sections = $$('[data-search-title]');
  const sideLinks = $$('.side-link');

  const syncScrollState = () => {
    const doc = document.documentElement;
    const max = doc.scrollHeight - doc.clientHeight;
    progress.style.width = `${max > 0 ? (doc.scrollTop / max) * 100 : 0}%`;

    let current = 'visao-geral';
    sections.forEach(section => {
      if (section.getBoundingClientRect().top <= 180) current = section.id;
    });
    sideLinks.forEach(link => link.classList.toggle('active', link.hash === `#${current}`));
  };
  document.addEventListener('scroll', syncScrollState, { passive: true });
  syncScrollState();

  // Reveal animation
  const observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: .12 });
  $$('.reveal').forEach(el => observer.observe(el));

  // Search modal
  const searchLayer = $('#searchLayer');
  const searchInput = $('#globalSearch');
  const searchResults = $('#searchResults');
  const searchable = sections.map(section => ({
    id: section.id,
    title: section.dataset.searchTitle,
    text: section.innerText.replace(/\s+/g, ' ').trim()
  }));

  const openSearch = () => {
    searchLayer.classList.add('open');
    searchLayer.setAttribute('aria-hidden', 'false');
    searchInput.value = '';
    renderSearch('');
    setTimeout(() => searchInput.focus(), 40);
  };
  const closeSearch = () => {
    searchLayer.classList.remove('open');
    searchLayer.setAttribute('aria-hidden', 'true');
  };
  const renderSearch = query => {
    const q = query.trim().toLowerCase();
    const matches = searchable.filter(item => !q || item.title.toLowerCase().includes(q) || item.text.toLowerCase().includes(q)).slice(0, 8);
    searchResults.innerHTML = matches.length
      ? matches.map(item => `<a class="search-result" href="#${item.id}"><b>${item.title}</b><span>#${item.id}</span></a>`).join('')
      : '<div class="search-empty">Nenhum resultado encontrado.</div>';
    $$('.search-result', searchResults).forEach(link => link.addEventListener('click', closeSearch));
  };
  $('#searchButton').addEventListener('click', openSearch);
  $('#closeSearch').addEventListener('click', closeSearch);
  searchInput.addEventListener('input', e => renderSearch(e.target.value));
  searchLayer.addEventListener('click', e => { if (e.target === searchLayer) closeSearch(); });
  document.addEventListener('keydown', e => {
    if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === 'k') { e.preventDefault(); openSearch(); }
    if (e.key === 'Escape') closeSearch();
  });

  // Collapsible code + copy buttons
  let allCodeOpen = false;
  $('#toggleAllCode').addEventListener('click', e => {
    allCodeOpen = !allCodeOpen;
    $$('.code-drawer').forEach(details => details.open = allCodeOpen);
    e.currentTarget.textContent = allCodeOpen ? 'ESCONDER CÓDIGO' : 'MOSTRAR CÓDIGO';
  });

  $$('.copy-code').forEach(button => {
    button.addEventListener('click', async () => {
      const container = button.closest('.code-panel, .terminal-card, .editor-code-large');
      const code = $('code', container)?.innerText ?? '';
      try {
        await navigator.clipboard.writeText(code);
        const old = button.textContent;
        button.textContent = 'COPIADO ✓';
        setTimeout(() => button.textContent = old, 1400);
      } catch {
        button.textContent = 'SELECIONE O CÓDIGO';
      }
    });
  });

  // Editor hero canvas — lightweight pseudo-3D renderer
  const canvas = $('#sceneCanvas');
  const ctx = canvas.getContext('2d');
  let angleX = -.55;
  let angleY = .65;
  let zoom = 1;
  let dragging = false;
  let lastX = 0;
  let lastY = 0;
  let playing = false;
  let selected = 'Player';

  const resizeCanvas = () => {
    const rect = canvas.getBoundingClientRect();
    const dpr = Math.min(window.devicePixelRatio || 1, 2);
    canvas.width = Math.max(1, rect.width * dpr);
    canvas.height = Math.max(1, rect.height * dpr);
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    drawScene(performance.now());
  };

  const project = (x, y, z, w, h) => {
    const cy = Math.cos(angleY), sy = Math.sin(angleY);
    const cx = Math.cos(angleX), sx = Math.sin(angleX);
    const x1 = x * cy - z * sy;
    const z1 = x * sy + z * cy;
    const y1 = y * cx - z1 * sx;
    const z2 = y * sx + z1 * cx;
    const perspective = 1 / (1 + z2 * .0025);
    return { x: w / 2 + x1 * zoom * perspective, y: h * .55 - y1 * zoom * perspective, z: z2 };
  };

  const drawLine3D = (a, b, color, width, w, h) => {
    const p1 = project(...a, w, h), p2 = project(...b, w, h);
    ctx.strokeStyle = color; ctx.lineWidth = width; ctx.beginPath(); ctx.moveTo(p1.x, p1.y); ctx.lineTo(p2.x, p2.y); ctx.stroke();
  };

  const drawCube = (cx, cy, cz, size, time, w, h) => {
    const bob = playing ? Math.sin(time * .002) * 10 : 0;
    const s = size / 2;
    const points = [
      [-s,-s,-s],[s,-s,-s],[s,s,-s],[-s,s,-s],[-s,-s,s],[s,-s,s],[s,s,s],[-s,s,s]
    ].map(([x,y,z]) => project(x+cx, y+cy+bob, z+cz, w, h));
    const faces = [[0,1,2,3],[1,5,6,2],[4,0,3,7],[4,5,1,0],[3,2,6,7],[5,4,7,6]];
    const colors = ['#7331be','#8f3dff','#5d249c','#a65aff','#bd78ff','#6e2bb5'];
    faces.map((face, i) => ({face, i, depth: face.reduce((sum, idx) => sum + points[idx].z, 0) / 4}))
      .sort((a,b) => a.depth - b.depth)
      .forEach(({face, i}) => {
        ctx.fillStyle = colors[i]; ctx.strokeStyle = 'rgba(230,195,255,.45)'; ctx.lineWidth = 1;
        ctx.beginPath(); face.forEach((idx, n) => n ? ctx.lineTo(points[idx].x, points[idx].y) : ctx.moveTo(points[idx].x, points[idx].y)); ctx.closePath(); ctx.fill(); ctx.stroke();
      });
    return project(cx, cy+bob, cz, w, h);
  };

  const drawScene = time => {
    const rect = canvas.getBoundingClientRect();
    const w = rect.width, h = rect.height;
    ctx.clearRect(0,0,w,h);

    const grad = ctx.createRadialGradient(w*.5,h*.45,20,w*.5,h*.45,w*.55);
    grad.addColorStop(0,'rgba(113,43,169,.23)'); grad.addColorStop(1,'rgba(5,4,8,0)');
    ctx.fillStyle = grad; ctx.fillRect(0,0,w,h);

    for (let i=-6;i<=6;i++) {
      drawLine3D([-240,0,i*40],[240,0,i*40],'rgba(210,175,255,.105)',1,w,h);
      drawLine3D([i*40,0,-240],[i*40,0,240],'rgba(210,175,255,.105)',1,w,h);
    }
    const center = drawCube(0,60,0,95,time,w,h);
    drawLine3D([0,10,0],[130,10,0],'rgba(255,75,103,.9)',2,w,h);
    drawLine3D([0,10,0],[0,145,0],'rgba(101,224,154,.9)',2,w,h);
    drawLine3D([0,10,0],[0,10,130],'rgba(88,145,255,.9)',2,w,h);

    if (selected === 'Player') {
      ctx.strokeStyle = 'rgba(214,170,255,.85)'; ctx.lineWidth=2; ctx.setLineDash([5,5]); ctx.beginPath(); ctx.arc(center.x,center.y,72,0,Math.PI*2);ctx.stroke();ctx.setLineDash([]);
    }
    if (playing) requestAnimationFrame(drawScene);
  };

  const pointerDown = e => { dragging = true; lastX = e.clientX; lastY = e.clientY; canvas.setPointerCapture(e.pointerId); };
  const pointerMove = e => {
    if (!dragging) return;
    angleY += (e.clientX-lastX)*.01; angleX += (e.clientY-lastY)*.008; angleX = Math.max(-1.25, Math.min(.5, angleX)); lastX=e.clientX;lastY=e.clientY;drawScene(performance.now());
  };
  const pointerUp = () => dragging = false;
  canvas.addEventListener('pointerdown', pointerDown);canvas.addEventListener('pointermove', pointerMove);canvas.addEventListener('pointerup', pointerUp);canvas.addEventListener('pointercancel', pointerUp);
  canvas.addEventListener('wheel', e => { e.preventDefault(); zoom=Math.max(.55,Math.min(1.7,zoom-e.deltaY*.001));drawScene(performance.now()); }, {passive:false});
  canvas.addEventListener('click', () => { selected='Player';$('#selectedObject').textContent='Player';drawScene(performance.now()); });
  window.addEventListener('resize', resizeCanvas);
  setTimeout(resizeCanvas, 30);

  $$('.tree-item').forEach(item => item.addEventListener('click', () => {
    $$('.tree-item').forEach(el => el.classList.remove('active')); item.classList.add('active'); selected=item.dataset.object;$('#selectedObject').textContent=selected;drawScene(performance.now());
  }));
  $$('.tool').forEach(tool => tool.addEventListener('click', () => { $$('.tool').forEach(t=>t.classList.remove('active'));tool.classList.add('active'); }));
  $('#playDemo').addEventListener('click', e => { playing=!playing;e.currentTarget.textContent=playing?'■ STOP':'▶ PLAY';if(playing)requestAnimationFrame(drawScene);else drawScene(performance.now()); });

  // Quick-start stepper
  const steps = [
    { title:'Instale o APK de debug', desc:'Use o APK gerado em <code>app/build/outputs/apk/debug/app-debug.apk</code> para validar o fluxo completo no aparelho ou emulador.', visual:'install' },
    { title:'Abra o Open World Starter', desc:'O template já reúne terreno, grama 3D, Toy Car, personagem animado, câmera FPS, joystick, pulo, Lua e NoCode.', visual:'project' },
    { title:'Selecione e transforme objetos', desc:'Use Cena e Inspector para alterar posição, rotação e escala. As mudanças entram no histórico e no autosave.', visual:'edit' },
    { title:'Escolha Lua ou o grafo visual', desc:'Crie um script ou conecte nodes reais. As duas opções usam a mesma API de gameplay.', visual:'logic' },
    { title:'Execute em uma cópia isolada', desc:'Play clona a cena, executa a lógica e preserva o documento editável. Stop descarta a sessão.', visual:'play' }
  ];
  const visualTemplates = {
    install: '<div class="phone-shell"><div class="phone-camera"></div><div class="phone-content"><img src="assets/logo.png" alt=""><span>MOBILE GAME STUDIO</span><button>INSTALL</button></div></div>',
    project: '<div class="phone-shell"><div class="phone-camera"></div><div class="phone-content"><span style="font-size:12px;color:#c7a6e8">PROJETOS</span><div style="width:145px;padding:16px;background:#251638;border:1px solid #65418c;border-radius:16px"><b style="font-family:Impact;font-size:18px">OPEN WORLD</b><small style="display:block;color:#9889a5;margin-top:7px">starter project</small></div></div></div>',
    edit: '<div class="phone-shell" style="width:340px;height:205px;transform:rotate(-2deg)"><div class="phone-camera"></div><div class="phone-content" style="display:grid;grid-template-columns:70px 1fr 80px;padding:18px;gap:8px"><div style="height:130px;background:#17101f;border-radius:9px"></div><div style="height:130px;background:radial-gradient(circle,#432460,#0b0910);border-radius:9px;display:grid;place-items:center"><b style="font-size:50px;color:#9b48ec">◇</b></div><div style="height:130px;background:#17101f;border-radius:9px"></div></div></div>',
    logic: '<div style="width:340px;height:230px;position:relative;background:#120f17;border:1px solid #5d3b75;border-radius:22px;background-image:radial-gradient(#4d3b58 1px,transparent 1px);background-size:18px 18px"><div class="logic-node" style="left:25px;top:40px;transform:scale(.8)"><span>EVENTO</span><b>Ao tocar</b></div><div class="logic-node" style="left:170px;top:120px;transform:scale(.8)"><span>TRANSFORM</span><b>Rotacionar</b></div></div>',
    play: '<div style="width:330px;height:220px;border-radius:22px;background:linear-gradient(#58338a 0 52%,#315326 52%);position:relative;overflow:hidden;border:1px solid #9670b7"><div style="position:absolute;left:145px;top:100px;width:40px;height:65px;background:#18101e;border-radius:18px 18px 5px 5px"></div><div style="position:absolute;top:15px;right:15px;background:#8f3dff;border-radius:9px;padding:9px 16px;font-weight:900;font-size:10px">■ STOP</div></div>'
  };
  $$('.timeline-step').forEach(button => button.addEventListener('click', () => {
    const index = Number(button.dataset.step); const item = steps[index];
    $$('.timeline-step').forEach(el => el.classList.remove('active'));button.classList.add('active');
    $('#stepSticker').textContent=`PASSO 0${index+1}`;$('#stepTitle').textContent=item.title;$('#stepDescription').innerHTML=item.desc;$('#stepVisual').innerHTML=visualTemplates[item.visual];
  }));

  // Responsive editor demo
  $$('.layout-button').forEach(button => button.addEventListener('click', () => {
    $$('.layout-button').forEach(el=>el.classList.remove('active'));button.classList.add('active');
    $('#responsiveDemo').className=`responsive-demo ${button.dataset.layout}`;
  }));

  // Component explorer
  const components = {
    transform:{title:'Transform',text:'Define posição, rotação e escala local do objeto. É serializável e validado antes de chegar ao runtime.',metrics:[['POSITION','[0, 1, 0]'],['ROTATION','[0, 0, 0]'],['SCALE','[1, 1, 1]']]},
    mesh:{title:'MeshInstance3D',text:'Referencia geometria e material pelo sistema nativo do Godot. GLB, primitivas e materiais PBR permanecem integrados à SceneTree.',metrics:[['SOURCE','assets/models/player.glb'],['VISIBLE','true'],['MATERIAL','PBR']]},
    collider:{title:'CollisionShape3D',text:'Define a forma usada pelo servidor de física. O projeto de exemplo combina CharacterBody3D e colisão de chão para validar movimento e pulo.',metrics:[['SHAPE','capsule'],['TRIGGER','false'],['STATUS','native']]},
    lua:{title:'LuaScript',text:'Liga um script persistido ao GameObject. A execução recebe globals explícitos, limites de instruções, tempo e callbacks.',metrics:[['FILE','scripts/lua/player.lua'],['ENABLED','true'],['SANDBOX','active']]},
    camera:{title:'Camera3D',text:'Câmera nativa ligada ao pivot do personagem. O NoCode Character Look aplica yaw e pitch a partir do arrasto mobile.',metrics:[['FOV','75°'],['NEAR','0.1'],['PLAY DRIVER','NoCode']]},
    light:{title:'DirectionalLight3D',text:'Fonte direcional nativa da cena, executada pelo renderer Godot e disponível aos grafos por NodePath validado.',metrics:[['ENERGY','1.0'],['COLOR','#ffffff'],['STATUS','native']]}
  };
  const renderComponent = key => {
    const item=components[key];const detail=$('#componentDetail');
    $('h3',detail).textContent=item.title;$('p',detail).textContent=item.text;
    $$('.metric-row',detail).forEach((row,i)=>{const metric=item.metrics[i]||['—','—'];$('span',row).textContent=metric[0];$('b',row).textContent=metric[1];});
  };
  $$('.scene-node').forEach(node=>node.addEventListener('click',()=>{$$('.scene-node').forEach(n=>n.classList.remove('active'));node.classList.add('active');renderComponent(node.dataset.component);}));

  // Architecture explorer
  const modules = {
    app:{n:'01',title:'Android Shell',text:'Inicializa a build customizada, aplica identidade do produto e integra o ciclo de vida Android.',pills:['APK','branding','lifecycle']},
    editor:{n:'02',title:'EditorPlugin NoCode',text:'Dock nativo com busca, categorias, grafo organizado, importação e validação.',pills:['GraphEdit','EditorPlugin','touch UI']},
    projects:{n:'03',title:'Projetos Godot',text:'Cenas, recursos, scripts e grafos JSON persistidos em res:// e compatíveis com o editor.',pills:['PackedScene','Resource','graph.json']},
    runtime:{n:'04',title:'SceneTree Runtime',text:'Executa Nodes 2D/3D, física, áudio, UI e rendering pelo runtime nativo Godot.',pills:['SceneTree','RenderingServer','PhysicsServer3D']},
    scripting:{n:'05',title:'MGSNoCodeRunner',text:'Valida o grafo, resolve somente operações registradas e interage diretamente com Nodes da cena.',pills:['native C++','signals','graph_error']},
    contracts:{n:'06',title:'Contrato de grafo',text:'Define schemaVersion, nós, conexões, valores, NodePaths e regras de compatibilidade legada.',pills:['schema v2','validation','legacy import']},
    model:{n:'07',title:'Catálogo nativo',text:'Fonte auditada de IDs, títulos e categorias das 961 operações disponíveis.',pills:['961 nodes','stable IDs','generated docs']},
    common:{n:'08',title:'Testes de contrato',text:'Confere branding, catálogo, documentação, importação, execução e projetos de demonstração.',pills:['11 tests','fixtures','CI']}
  };
  $$('.module-card').forEach(card=>card.addEventListener('click',()=>{
    $$('.module-card').forEach(c=>c.classList.remove('active'));card.classList.add('active');
    const item=modules[card.dataset.module],box=$('#moduleDescription');$('.sticker',box).textContent=`MÓDULO ${item.n}`;$('h3',box).textContent=item.title;$('p',box).textContent=item.text;$('.module-pills',box).innerHTML=item.pills.map(p=>`<span>${p}</span>`).join('');
  }));

  // Logic tabs
  $$('.logic-tab').forEach(tab=>tab.addEventListener('click',()=>{
    $$('.logic-tab').forEach(t=>t.classList.remove('active'));tab.classList.add('active');
    $$('.logic-panel').forEach(panel=>panel.classList.toggle('active',panel.dataset.panel===tab.dataset.logic));
  }));

  // Complete native NoCode reference. Data is generated from the audited catalog.
  const catalog = window.MGS_NOCODE_CATALOG || [];
  const catalogGrid = $('#nocodeGrid');
  if (catalogGrid) {
    const categorySelect = $('#nocodeCategory');
    const search = $('#nocodeSearch');
    const more = $('#nocodeMore');
    const categories = [...new Set(catalog.map(item => item.category))].sort((a,b)=>a.localeCompare(b,'pt-BR'));
    categories.forEach(category => categorySelect.add(new Option(category, category)));
    $('#nocodeTotal').textContent = catalog.length.toLocaleString('pt-BR');
    $('#nocodeCategories').textContent = categories.length;
    let limit = 24;

    const escapeHtml = value => String(value).replace(/[&<>"']/g, char => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[char]));
    const filtered = () => {
      const query = search.value.trim().toLocaleLowerCase('pt-BR');
      return catalog.filter(item => (!categorySelect.value || item.category === categorySelect.value) &&
        (!query || `${item.title} ${item.id} ${item.category} ${item.purpose}`.toLocaleLowerCase('pt-BR').includes(query)));
    };
    const renderCatalog = () => {
      const matches = filtered();
      catalogGrid.innerHTML = matches.slice(0, limit).map(item => `<details class="nocode-card">
        <summary><span>${escapeHtml(item.category)}</span><b>${escapeHtml(item.title)}</b><code>${escapeHtml(item.id)}</code></summary>
        <div><h4>O QUE FAZ</h4><p>${escapeHtml(item.purpose)}</p><h4>ENTRADAS / ALVO</h4><p>${escapeHtml(item.inputs)}</p><h4>RESULTADO</h4><p>${escapeHtml(item.outputs)}</p><h4>EXEMPLO PRÁTICO</h4><p class="nocode-example">${escapeHtml(item.example)}</p><h4>FALHAS ESPERADAS</h4><p>${escapeHtml(item.errors)}</p></div>
      </details>`).join('');
      $('#nocodeCount').textContent = `${Math.min(limit,matches.length)} de ${matches.length} blocos`;
      more.hidden = limit >= matches.length;
    };
    const resetCatalog = () => { limit = 24; renderCatalog(); };
    search.addEventListener('input', resetCatalog);
    categorySelect.addEventListener('change', resetCatalog);
    more.addEventListener('click', () => { limit += 24; renderCatalog(); });
    renderCatalog();
  }
})();
