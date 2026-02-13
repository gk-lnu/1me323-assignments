import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  let html = '';
  
  for (const product of products) {
    html += '<div>' + product.name + '</div>';
  }
  
  grid.innerHTML = html;
}

renderProducts();
