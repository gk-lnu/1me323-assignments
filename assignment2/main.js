import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  let html = '';
  
  for (const product of products) {
    html += `
      <div class="product-card">
        <img src="${product.image}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p class="desc">${product.description}</p>
        <p class="price">${product.price} kr</p>
      </div>
    `;
  }
  
  grid.innerHTML = html;
}

renderProducts();
