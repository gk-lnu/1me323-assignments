import { products } from './products.js';

const grid = document.getElementById('product-grid');

for (const product of products) {
  console.log(product.name);
}
