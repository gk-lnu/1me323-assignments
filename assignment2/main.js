import { products } from './products.js';

let cart = [];

function renderProducts() {
  const grid = document.getElementById('product-grid');
  let html = '';
  
  for (const product of products) {
    html += `
      <article class="product-card">
        <img src="${product.image}" alt="${product.name}">
        <span class="category">${product.category}</span>
        <h3>${product.name}</h3>
        <p class="desc">${product.description}</p>
        <p class="price">${product.price} kr</p>
        <button class="add-btn">Lägg i kundvagn</button>
      </article>
    `;
  }
  
  grid.innerHTML = html;
}

renderProducts();
