import { products } from './products.js';

let cart = JSON.parse(localStorage.getItem('cart')) || [];

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
        <button class="add-btn" data-id="${product.id}">Lägg i kundvagn</button>
      </article>
    `;
  }
  
  grid.innerHTML = html;
  
  const btns = document.querySelectorAll('.add-btn');
  for (const btn of btns) {
    btn.addEventListener('click', () => {
      const id = Number(btn.dataset.id);
      addToCart(id);
    });
  }
}

function addToCart(id) {
  const found = cart.find(item => item.id === id);
  if (found) {
    found.quantity += 1;
  } else {
    cart.push({ id: id, quantity: 1 });
  }
  saveCart();
  renderCart();
}

function saveCart() {
  localStorage.setItem('cart', JSON.stringify(cart));
}

function renderCart() {
  const cartDiv = document.getElementById('cart-items');
  const totalEl = document.getElementById('total');
  
  if (cart.length === 0) {
    cartDiv.innerHTML = '<p>Tomt</p>';
    totalEl.textContent = '0 kr';
    return;
  }
  
  let html = '';
  let sum = 0;
  
  for (const item of cart) {
    const prod = products.find(p => p.id === item.id);
    const itemSum = prod.price * item.quantity;
    sum += itemSum;
    html += `<p>${prod.name} x${item.quantity} - ${itemSum} kr</p>`;
  }
  
  cartDiv.innerHTML = html;
  totalEl.textContent = sum + ' kr';
}

function clearCart() {
  cart = [];
  saveCart();
  renderCart();
}

document.getElementById('clear-btn').addEventListener('click', clearCart);

renderProducts();
renderCart();
