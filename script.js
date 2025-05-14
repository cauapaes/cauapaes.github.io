document.addEventListener('DOMContentLoaded', () => {
  const input = document.querySelector('.search-input');
  const listItems = document.querySelectorAll('.produto-item');

  function normalizeText(text) {
    return text
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .toLowerCase();
  }

  // Filtro ao digitar
  input.addEventListener('input', function () {
    const searchText = normalizeText(input.value);

    listItems.forEach(item => {
      const itemText = normalizeText(item.querySelector('.descricao').textContent);
      item.style.display = itemText.includes(searchText) ? '' : 'none';
    });
  });

  // Clique em "Comprar Agora" abre link em nova aba/janela
  listItems.forEach(item => {
    const link = item.querySelector('.link-produto');
    const url = item.dataset.url;

    link.addEventListener('click', function (e) {
      e.preventDefault();
      if (url) {
        window.open(url, '_blank'); // Abre o link em nova aba
      }
    });
  });
});