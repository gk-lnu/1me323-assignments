import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  let html = '';
  
  for (const product of products) {
    html += '<div class="product-card">';
    html += '<h3>' + product.name + '</h3>';
    html += '<p>' + product.price + ' kr</p>';
    html += '</div>';
  }
  
  grid.innerHTML = html;
}

renderProducts();
