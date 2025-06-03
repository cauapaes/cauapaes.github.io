document.addEventListener('DOMContentLoaded', () => {
    const input = document.querySelector('.search-input');
    const listItems = document.querySelectorAll('.produto-item');
  
    // Função para normalizar o texto e facilitar a comparação
    function normalizeText(text) {
      return text
        .normalize('NFD') // Decomposição de caracteres
        .replace(/[\u0300-\u036f]/g, '') // Remove acentos
        .toLowerCase(); // Converte para minúsculas
    }
  
    // Filtro ao digitar no input
    input.addEventListener('input', () => {
      const searchText = normalizeText(input.value); // Texto buscado normalizado
  
      listItems.forEach(item => {
        const itemText = normalizeText(item.querySelector('.descricao').textContent); // Texto do item normalizado
        // Exibe ou esconde o item dependendo da correspondência
        item.style.display = itemText.includes(searchText) ? '' : 'none';
      });
    });
  
    // Clique em "Comprar Agora" abre link em nova aba/janela
    listItems.forEach(item => {
      const link = item.querySelector('.link-produto');
      const url = item.dataset.url; // Obtém o URL do atributo data-url
  
      if (link && url) {
        link.addEventListener('click', (e) => {
          e.preventDefault(); // Impede a navegação padrão
          window.open(url, '_blank'); // Abre o link em uma nova aba
        });
      }
    });
  });
  