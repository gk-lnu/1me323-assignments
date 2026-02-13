import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  
  for (const product of products) {
    console.log(product.name);
  }
}

renderProducts();
