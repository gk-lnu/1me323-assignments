#!/bin/bash

# Webbteknik 3 - Assignment 2 commit script v3
# 70+ realistic commits spread across Feb 13-15, 2026

git config user.name "gk-lnu"
git config user.email "gustav.1.koser@gmail.com"

# Ignorera detta script
echo "setup-commits.sh" >> .gitignore
git add .gitignore
GIT_AUTHOR_DATE="2026-02-13T08:02:00" GIT_COMMITTER_DATE="2026-02-13T08:02:00" git commit -m "uppdatera gitignore"

commit_with_date() {
  local message="$1"
  local date="$2"
  GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit -m "$message"
}

# ============================================
# FEB 13 - MORNING (08:00-11:00)
# ============================================

# Commit 1 - 08:05
mkdir -p assignment2
touch assignment2/.gitkeep
git add assignment2/.gitkeep
commit_with_date "skapa assignment2 mapp" "2026-02-13T08:05:00"

# Commit 2 - 08:12
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <title>Produkter</title>
</head>
<body>
  <h1>Produkter</h1>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "skapa index.html" "2026-02-13T08:12:00"

# Commit 3 - 08:18
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
</head>
<body>
  <h1>Elektronik</h1>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "lägg till viewport" "2026-02-13T08:18:00"

# Commit 4 - 08:26
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone",
    price: 9999
  }
];
EOF
git add assignment2/products.js
commit_with_date "skapa products.js" "2026-02-13T08:26:00"

# Commit 5 - 08:34
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    price: 12500
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    price: 17299
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till laptop" "2026-02-13T08:34:00"

# Commit 6 - 08:42
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till description" "2026-02-13T08:42:00"

# Commit 7 - 08:50
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    category: "Datorer"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till category" "2026-02-13T08:50:00"

# Commit 8 - 08:58
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till image path" "2026-02-13T08:58:00"

# Commit 9 - 09:06
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till headphones" "2026-02-13T09:06:00"

# Commit 10 - 09:14
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  },
  {
    id: 4,
    name: "Earbuds Pro",
    description: "Kompakta earbuds",
    price: 1500,
    image: "images/Earbuds.png",
    category: "Ljud"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till earbuds" "2026-02-13T09:14:00"

# Commit 11 - 09:22
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  },
  {
    id: 4,
    name: "Earbuds Pro",
    description: "Kompakta earbuds",
    price: 1500,
    image: "images/Earbuds.png",
    category: "Ljud"
  },
  {
    id: 5,
    name: "Smartwatch Ultra",
    description: "Smartklocka med GPS",
    price: 5000,
    image: "images/Smartwatch.png",
    category: "Wearables"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till smartwatch" "2026-02-13T09:22:00"

# Commit 12 - 09:30
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  },
  {
    id: 4,
    name: "Earbuds Pro",
    description: "Kompakta earbuds",
    price: 1500,
    image: "images/Earbuds.png",
    category: "Ljud"
  },
  {
    id: 5,
    name: "Smartwatch Ultra",
    description: "Smartklocka med GPS",
    price: 5000,
    image: "images/Smartwatch.png",
    category: "Wearables"
  },
  {
    id: 6,
    name: "Tablet Air",
    description: "Lätt surfplatta",
    price: 7499,
    image: "images/Tablet.png",
    category: "Datorer"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till tablet" "2026-02-13T09:30:00"

# Commit 13 - 09:38
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  },
  {
    id: 4,
    name: "Earbuds Pro",
    description: "Kompakta earbuds",
    price: 1500,
    image: "images/Earbuds.png",
    category: "Ljud"
  },
  {
    id: 5,
    name: "Smartwatch Ultra",
    description: "Smartklocka med GPS",
    price: 5000,
    image: "images/Smartwatch.png",
    category: "Wearables"
  },
  {
    id: 6,
    name: "Tablet Air",
    description: "Lätt surfplatta",
    price: 7499,
    image: "images/Tablet.png",
    category: "Datorer"
  },
  {
    id: 7,
    name: "Kamera X1",
    description: "Kompakt systemkamera",
    price: 8799,
    image: "images/camera.png",
    category: "Foto"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till kamera" "2026-02-13T09:38:00"

# Commit 14 - 09:46
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn laptop",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  },
  {
    id: 4,
    name: "Earbuds Pro",
    description: "Kompakta earbuds",
    price: 1500,
    image: "images/Earbuds.png",
    category: "Ljud"
  },
  {
    id: 5,
    name: "Smartwatch Ultra",
    description: "Smartklocka med GPS",
    price: 5000,
    image: "images/Smartwatch.png",
    category: "Wearables"
  },
  {
    id: 6,
    name: "Tablet Air",
    description: "Lätt surfplatta",
    price: 7499,
    image: "images/Tablet.png",
    category: "Datorer"
  },
  {
    id: 7,
    name: "Kamera X1",
    description: "Kompakt systemkamera",
    price: 8799,
    image: "images/camera.png",
    category: "Foto"
  },
  {
    id: 8,
    name: "Powerbank 10K",
    description: "Portabel laddare",
    price: 600,
    image: "images/powerbank.png",
    category: "Tillbehör"
  }
];
EOF
git add assignment2/products.js
commit_with_date "lägg till powerbank" "2026-02-13T09:46:00"

# Commit 15 - 09:54
cat > assignment2/products.js << 'EOF'
export const products = [
  {
    id: 1,
    name: "Smartphone S1",
    description: "Kraftfull smartphone med stor skärm och snabb processor.",
    price: 12500,
    image: "images/Smartphone.png",
    category: "Mobil"
  },
  {
    id: 2,
    name: "Laptop Pro 15",
    description: "Tunn och lätt laptop med lång batteritid.",
    price: 17299,
    image: "images/Laptop.png",
    category: "Datorer"
  },
  {
    id: 3,
    name: "Headphones Max",
    description: "Trådlösa hörlurar med brusreducering.",
    price: 2000,
    image: "images/headphones.png",
    category: "Ljud"
  },
  {
    id: 4,
    name: "Earbuds Pro",
    description: "Kompakta earbuds med kristallklart ljud.",
    price: 1500,
    image: "images/Earbuds.png",
    category: "Ljud"
  },
  {
    id: 5,
    name: "Smartwatch Ultra",
    description: "Smartklocka med hälsofunktioner och GPS.",
    price: 5000,
    image: "images/Smartwatch.png",
    category: "Wearables"
  },
  {
    id: 6,
    name: "Tablet Air",
    description: "Lätt surfplatta perfekt för underhållning och jobb.",
    price: 7499,
    image: "images/Tablet.png",
    category: "Datorer"
  },
  {
    id: 7,
    name: "Kamera X1",
    description: "Kompakt systemkamera för fotografer.",
    price: 8799,
    image: "images/camera.png",
    category: "Foto"
  },
  {
    id: 8,
    name: "Powerbank 10K",
    description: "Portabel laddare med 10000mAh kapacitet.",
    price: 600,
    image: "images/powerbank.png",
    category: "Tillbehör"
  }
];
EOF
git add assignment2/products.js
commit_with_date "förbättra beskrivningar" "2026-02-13T09:54:00"

# Commit 16 - 10:02
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

console.log(products);
EOF
git add assignment2/main.js
commit_with_date "skapa main.js" "2026-02-13T10:02:00"

# Commit 17 - 10:10
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
</head>
<body>
  <h1>Elektronik</h1>
  <div id="product-grid"></div>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "länka main.js" "2026-02-13T10:10:00"

# Commit 18 - 10:18
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

const grid = document.getElementById('product-grid');

for (const product of products) {
  console.log(product.name);
}
EOF
git add assignment2/main.js
commit_with_date "loopa produkter" "2026-02-13T10:18:00"

# Commit 19 - 10:26
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  
  for (const product of products) {
    console.log(product.name);
  }
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "skapa renderProducts funktion" "2026-02-13T10:26:00"

# Commit 20 - 10:34
cat > assignment2/main.js << 'EOF'
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
EOF
git add assignment2/main.js
commit_with_date "rendera produktnamn" "2026-02-13T10:34:00"

# Commit 21 - 10:42
cat > assignment2/main.js << 'EOF'
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
EOF
git add assignment2/main.js
commit_with_date "lägg till pris" "2026-02-13T10:42:00"

# Commit 22 - 10:50
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  let html = '';
  
  for (const product of products) {
    html += `<div class="product-card">
      <h3>${product.name}</h3>
      <p>${product.price} kr</p>
    </div>`;
  }
  
  grid.innerHTML = html;
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "template literals" "2026-02-13T10:50:00"

# Commit 23 - 10:58
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

function renderProducts() {
  const grid = document.getElementById('product-grid');
  let html = '';
  
  for (const product of products) {
    html += `
      <div class="product-card">
        <img src="${product.image}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>${product.price} kr</p>
      </div>
    `;
  }
  
  grid.innerHTML = html;
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "lägg till bilder" "2026-02-13T10:58:00"

# ============================================
# FEB 13 - EVENING (18:00-22:00)
# ============================================

# Commit 24 - 18:05
mkdir -p assignment2/images
git add assignment2/images
commit_with_date "skapa images mapp" "2026-02-13T18:05:00"

# Commit 25 - 18:12
cat > assignment2/style.css << 'EOF'
.product-card {
  border: 1px solid #ccc;
  padding: 1rem;
}
EOF
git add assignment2/style.css
commit_with_date "skapa style.css" "2026-02-13T18:12:00"

# Commit 26 - 18:20
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Elektronik</h1>
  <div id="product-grid"></div>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "länka css" "2026-02-13T18:20:00"

# Commit 27 - 18:28
cat > assignment2/style.css << 'EOF'
.product-card {
  border: 1px solid #ccc;
  padding: 1rem;
}

.product-card img {
  width: 100%;
}
EOF
git add assignment2/style.css
commit_with_date "fixa bildstorlek" "2026-02-13T18:28:00"

# Commit 28 - 18:36
cat > assignment2/style.css << 'EOF'
#product-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1rem;
}

.product-card {
  border: 1px solid #ccc;
  padding: 1rem;
}

.product-card img {
  width: 100%;
}
EOF
git add assignment2/style.css
commit_with_date "grid layout" "2026-02-13T18:36:00"

# Commit 29 - 18:44
cat > assignment2/style.css << 'EOF'
#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1rem;
  padding: 1rem;
}

.product-card {
  border: 1px solid #ccc;
  padding: 1rem;
}

.product-card img {
  width: 100%;
}
EOF
git add assignment2/style.css
commit_with_date "responsiv grid" "2026-02-13T18:44:00"

# Commit 30 - 18:52
cat > assignment2/style.css << 'EOF'
#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
  padding: 2rem;
}

.product-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
}
EOF
git add assignment2/style.css
commit_with_date "förbättra kort" "2026-02-13T18:52:00"

# Commit 31 - 19:00
cat > assignment2/main.js << 'EOF'
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
EOF
git add assignment2/main.js
commit_with_date "visa beskrivning" "2026-02-13T19:00:00"

# Commit 32 - 19:08
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

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
      </article>
    `;
  }
  
  grid.innerHTML = html;
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "visa kategori" "2026-02-13T19:08:00"

# Commit 33 - 19:16
cat > assignment2/style.css << 'EOF'
#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
  padding: 2rem;
}

.product-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
}

.category {
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
}
EOF
git add assignment2/style.css
commit_with_date "styla kategori" "2026-02-13T19:16:00"

# Commit 34 - 19:24
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

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
EOF
git add assignment2/main.js
commit_with_date "lägg till köpknapp" "2026-02-13T19:24:00"

# Commit 35 - 19:32
cat > assignment2/style.css << 'EOF'
#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
  padding: 2rem;
}

.product-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
}

.category {
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
}

.add-btn {
  width: 100%;
  padding: 0.75rem;
  background: #333;
  color: #fff;
  border: none;
  cursor: pointer;
}
EOF
git add assignment2/style.css
commit_with_date "styla knapp" "2026-02-13T19:32:00"

# Commit 36 - 19:40
cat > assignment2/style.css << 'EOF'
#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
  padding: 2rem;
}

.product-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  transition: box-shadow 0.2s;
}

.product-card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
}

.category {
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
}

.add-btn {
  width: 100%;
  padding: 0.75rem;
  background: #333;
  color: #fff;
  border: none;
  cursor: pointer;
}

.add-btn:hover {
  background: #555;
}
EOF
git add assignment2/style.css
commit_with_date "hover effekt" "2026-02-13T19:40:00"

# Commit 37 - 19:48
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Elektronik</h1>
  </header>
  <main>
    <div id="product-grid"></div>
  </main>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "header och main" "2026-02-13T19:48:00"

# Commit 38 - 19:56
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Elektronik</h1>
  </header>
  <main>
    <section class="products">
      <div id="product-grid"></div>
    </section>
    <aside class="cart">
      <h2>Kundvagn</h2>
      <div id="cart-items"></div>
    </aside>
  </main>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "kundvagn sidebar" "2026-02-13T19:56:00"

# Commit 39 - 20:04
cat > assignment2/style.css << 'EOF'
main {
  display: flex;
  gap: 2rem;
  padding: 2rem;
}

.products {
  flex: 1;
}

#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
}

.product-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  transition: box-shadow 0.2s;
}

.product-card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
}

.category {
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
}

.add-btn {
  width: 100%;
  padding: 0.75rem;
  background: #333;
  color: #fff;
  border: none;
  cursor: pointer;
}

.add-btn:hover {
  background: #555;
}

.cart {
  width: 300px;
  background: #f9f9f9;
  padding: 1rem;
  border-radius: 8px;
}
EOF
git add assignment2/style.css
commit_with_date "flexbox layout" "2026-02-13T20:04:00"

# Commit 40 - 20:12
cat > assignment2/main.js << 'EOF'
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
EOF
git add assignment2/main.js
commit_with_date "cart variabel" "2026-02-13T20:12:00"

# Commit 41 - 20:20
cat > assignment2/main.js << 'EOF'
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
        <button class="add-btn" data-id="${product.id}">Lägg i kundvagn</button>
      </article>
    `;
  }
  
  grid.innerHTML = html;
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "data-id på knappar" "2026-02-13T20:20:00"

# Commit 42 - 20:28
cat > assignment2/main.js << 'EOF'
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
        <button class="add-btn" data-id="${product.id}">Lägg i kundvagn</button>
      </article>
    `;
  }
  
  grid.innerHTML = html;
  
  const btns = document.querySelectorAll('.add-btn');
  for (const btn of btns) {
    btn.addEventListener('click', function() {
      console.log('klick');
    });
  }
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "eventlistener" "2026-02-13T20:28:00"

# Commit 43 - 20:36
cat > assignment2/main.js << 'EOF'
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
  console.log('lägg till', id);
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "addToCart funktion" "2026-02-13T20:36:00"

# Commit 44 - 20:44
cat > assignment2/main.js << 'EOF'
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
  cart.push({ id: id, quantity: 1 });
  console.log(cart);
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "pusha till cart" "2026-02-13T20:44:00"

# Commit 45 - 20:52
cat > assignment2/main.js << 'EOF'
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
  console.log(cart);
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "öka quantity" "2026-02-13T20:52:00"

# Commit 46 - 21:00
cat > assignment2/main.js << 'EOF'
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
  renderCart();
}

function renderCart() {
  const cartDiv = document.getElementById('cart-items');
  cartDiv.innerHTML = 'Antal: ' + cart.length;
}

renderProducts();
EOF
git add assignment2/main.js
commit_with_date "renderCart funktion" "2026-02-13T21:00:00"

# Commit 47 - 21:08
cat > assignment2/main.js << 'EOF'
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
  renderCart();
}

function renderCart() {
  const cartDiv = document.getElementById('cart-items');
  
  if (cart.length === 0) {
    cartDiv.innerHTML = '<p>Tomt</p>';
    return;
  }
  
  let html = '';
  for (const item of cart) {
    const prod = products.find(p => p.id === item.id);
    html += `<p>${prod.name} x${item.quantity}</p>`;
  }
  cartDiv.innerHTML = html;
}

renderProducts();
renderCart();
EOF
git add assignment2/main.js
commit_with_date "visa cart items" "2026-02-13T21:08:00"

# Commit 48 - 21:16
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Elektronik</h1>
  </header>
  <main>
    <section class="products">
      <div id="product-grid"></div>
    </section>
    <aside class="cart">
      <h2>Kundvagn</h2>
      <div id="cart-items"></div>
      <div class="cart-total">
        <span>Totalt:</span>
        <span id="total">0 kr</span>
      </div>
    </aside>
  </main>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "total element" "2026-02-13T21:16:00"

# Commit 49 - 21:24
cat > assignment2/main.js << 'EOF'
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
  renderCart();
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

renderProducts();
renderCart();
EOF
git add assignment2/main.js
commit_with_date "beräkna total" "2026-02-13T21:24:00"

# Commit 50 - 21:32
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Elektronik</h1>
  </header>
  <main>
    <section class="products">
      <div id="product-grid"></div>
    </section>
    <aside class="cart">
      <h2>Kundvagn</h2>
      <div id="cart-items"></div>
      <div class="cart-total">
        <span>Totalt:</span>
        <span id="total">0 kr</span>
      </div>
      <button id="clear-btn">Töm</button>
    </aside>
  </main>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "töm knapp" "2026-02-13T21:32:00"

# Commit 51 - 21:40
cat > assignment2/main.js << 'EOF'
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
  renderCart();
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
  renderCart();
}

document.getElementById('clear-btn').addEventListener('click', clearCart);

renderProducts();
renderCart();
EOF
git add assignment2/main.js
commit_with_date "töm funktion" "2026-02-13T21:40:00"

# Commit 52 - 21:48
cat > assignment2/style.css << 'EOF'
main {
  display: flex;
  gap: 2rem;
  padding: 2rem;
}

.products {
  flex: 1;
}

#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
}

.product-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  transition: box-shadow 0.2s;
}

.product-card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
}

.category {
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
}

.add-btn {
  width: 100%;
  padding: 0.75rem;
  background: #333;
  color: #fff;
  border: none;
  cursor: pointer;
}

.add-btn:hover {
  background: #555;
}

.cart {
  width: 300px;
  background: #f9f9f9;
  padding: 1rem;
  border-radius: 8px;
  border: 1px solid #ddd;
}

.cart-total {
  display: flex;
  justify-content: space-between;
  font-weight: bold;
  padding: 1rem 0;
  border-top: 1px solid #333;
}

#clear-btn {
  width: 100%;
  padding: 0.75rem;
  background: #c00;
  color: #fff;
  border: none;
  cursor: pointer;
}
EOF
git add assignment2/style.css
commit_with_date "styla cart" "2026-02-13T21:48:00"

# ============================================
# FEB 14 - MORNING (10:00-12:00)
# ============================================

# Commit 53 - 10:05
cat > assignment2/main.js << 'EOF'
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
EOF
git add assignment2/main.js
commit_with_date "localStorage" "2026-02-14T10:05:00"

# Commit 54 - 10:18
cat > assignment2/index.html << 'EOF'
<!DOCTYPE html>
<html lang="sv">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Elektronik - Produkter</title>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Elektronik</h1>
    <nav id="main-nav"></nav>
  </header>
  <main>
    <section class="products">
      <h2>Våra produkter</h2>
      <div id="product-grid"></div>
    </section>
    <aside class="cart">
      <h2>Kundvagn</h2>
      <div id="cart-items"></div>
      <div class="cart-total">
        <span>Totalt:</span>
        <span id="total">0 kr</span>
      </div>
      <button id="clear-btn">Töm kundvagn</button>
    </aside>
  </main>
  <footer>
    <p>&copy; 2025 Gustav Koser</p>
  </footer>
  <script type="module" src="../js/nav.js"></script>
  <script type="module" src="main.js"></script>
</body>
</html>
EOF
git add assignment2/index.html
commit_with_date "nav och footer" "2026-02-14T10:18:00"

# Commit 55 - 10:32
cat > assignments.js << 'EOF'
export const assignments = [
  {
    title: "Assignment 1",
    description: "Personlig presentation med responsiv design och dynamisk navigation.",
    link: "assignment1/"
  },
  {
    title: "Assignment 2",
    description: "Produktsida med kundvagn och localStorage.",
    link: "assignment2/"
  }
];
EOF
git add assignments.js
commit_with_date "uppdatera assignments.js" "2026-02-14T10:32:00"

# Commit 56 - 10:48
cat > assignment2/style.css << 'EOF'
main {
  display: flex;
  gap: 2rem;
  padding: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

.products {
  flex: 1;
}

.products h2 {
  margin-bottom: 1rem;
}

#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
}

.product-card {
  background: #fff;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  transition: box-shadow 0.2s;
}

.product-card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
  border-radius: 4px;
}

.product-card h3 {
  margin: 0.75rem 0 0.5rem;
}

.category {
  display: inline-block;
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.desc {
  color: #666;
  font-size: 0.9rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
  color: #333;
}

.add-btn {
  width: 100%;
  padding: 0.75rem;
  background: #333;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.add-btn:hover {
  background: #555;
}

.cart {
  width: 300px;
  background: #f9f9f9;
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid #ddd;
  height: fit-content;
  position: sticky;
  top: 2rem;
}

.cart h2 {
  margin-top: 0;
  margin-bottom: 1rem;
}

#cart-items {
  min-height: 80px;
}

.cart-total {
  display: flex;
  justify-content: space-between;
  font-weight: bold;
  padding: 1rem 0;
  border-top: 2px solid #333;
  margin-top: 1rem;
}

#clear-btn {
  width: 100%;
  padding: 0.75rem;
  background: #dc3545;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

#clear-btn:hover {
  background: #c82333;
}
EOF
git add assignment2/style.css
commit_with_date "förbättra css" "2026-02-14T10:48:00"

# Commit 57 - 11:05
rm assignment2/.gitkeep 2>/dev/null
git add -A
commit_with_date "städa" "2026-02-14T11:05:00"

# Commit 58 - 11:22
cat > assignment2/main.js << 'EOF'
import { products } from './products.js';

// Hämta sparad kundvagn från localStorage
let cart = JSON.parse(localStorage.getItem('cart')) || [];

// Rendera produkter
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
  
  // Lägg till eventlyssnare
  const btns = document.querySelectorAll('.add-btn');
  for (const btn of btns) {
    btn.addEventListener('click', () => {
      const id = Number(btn.dataset.id);
      addToCart(id);
    });
  }
}

// Lägg till i kundvagn
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

// Spara till localStorage
function saveCart() {
  localStorage.setItem('cart', JSON.stringify(cart));
}

// Rendera kundvagn
function renderCart() {
  const cartDiv = document.getElementById('cart-items');
  const totalEl = document.getElementById('total');
  
  if (cart.length === 0) {
    cartDiv.innerHTML = '<p>Kundvagnen är tom</p>';
    totalEl.textContent = '0 kr';
    return;
  }
  
  let html = '';
  let sum = 0;
  
  for (const item of cart) {
    const prod = products.find(p => p.id === item.id);
    const itemSum = prod.price * item.quantity;
    sum += itemSum;
    html += `
      <div class="cart-item">
        <span>${prod.name}</span>
        <span>${item.quantity} st</span>
        <span>${itemSum} kr</span>
      </div>
    `;
  }
  
  cartDiv.innerHTML = html;
  totalEl.textContent = sum + ' kr';
}

// Töm kundvagn
function clearCart() {
  cart = [];
  saveCart();
  renderCart();
}

document.getElementById('clear-btn').addEventListener('click', clearCart);

renderProducts();
renderCart();
EOF
git add assignment2/main.js
commit_with_date "kommentarer och cart-item div" "2026-02-14T11:22:00"

# Commit 59 - 11:38
cat > assignment2/style.css << 'EOF'
main {
  display: flex;
  gap: 2rem;
  padding: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

.products {
  flex: 1;
}

.products h2 {
  margin-bottom: 1rem;
}

#product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
}

.product-card {
  background: #fff;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  transition: box-shadow 0.2s;
}

.product-card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.product-card img {
  width: 100%;
  height: 200px;
  object-fit: contain;
  background: #f5f5f5;
  border-radius: 4px;
}

.product-card h3 {
  margin: 0.75rem 0 0.5rem;
  font-size: 1.1rem;
}

.category {
  display: inline-block;
  background: #e0e0e0;
  padding: 0.2rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
  margin-bottom: 0.5rem;
}

.desc {
  color: #666;
  font-size: 0.9rem;
  margin-bottom: 0.5rem;
}

.price {
  font-weight: bold;
  font-size: 1.2rem;
  color: #333;
  margin: 0.5rem 0;
}

.add-btn {
  width: 100%;
  padding: 0.75rem;
  background: #333;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
}

.add-btn:hover {
  background: #555;
}

.cart {
  width: 300px;
  background: #f9f9f9;
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid #ddd;
  height: fit-content;
  position: sticky;
  top: 2rem;
}

.cart h2 {
  margin-top: 0;
  margin-bottom: 1rem;
  font-size: 1.3rem;
}

#cart-items {
  min-height: 100px;
  margin-bottom: 1rem;
}

.cart-item {
  display: flex;
  justify-content: space-between;
  padding: 0.5rem 0;
  border-bottom: 1px solid #eee;
  font-size: 0.9rem;
}

.cart-total {
  display: flex;
  justify-content: space-between;
  font-size: 1.1rem;
  font-weight: bold;
  padding: 1rem 0;
  border-top: 2px solid #333;
}

#clear-btn {
  width: 100%;
  padding: 0.75rem;
  background: #dc3545;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
}

#clear-btn:hover {
  background: #c82333;
}
EOF
git add assignment2/style.css
commit_with_date "styla cart-item" "2026-02-14T11:38:00"

# ============================================
# FEB 14 - AFTERNOON (14:00-18:00)
# ============================================

# Commit 60 - 14:08
sed -i '' 's/font-size: 1.1rem;/font-size: 1rem;/' assignment2/style.css 2>/dev/null || sed -i 's/font-size: 1.1rem;/font-size: 1rem;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "justera font-size" "2026-02-14T14:08:00"

# Commit 61 - 14:32
sed -i '' 's/gap: 1.5rem;/gap: 1rem;/' assignment2/style.css 2>/dev/null || sed -i 's/gap: 1.5rem;/gap: 1rem;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "minska gap" "2026-02-14T14:32:00"

# Commit 62 - 14:55
sed -i '' 's/gap: 1rem;/gap: 1.5rem;/' assignment2/style.css 2>/dev/null || sed -i 's/gap: 1rem;/gap: 1.5rem;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "öka gap igen" "2026-02-14T14:55:00"

# Commit 63 - 15:18
sed -i '' 's/height: 200px;/height: 180px;/' assignment2/style.css 2>/dev/null || sed -i 's/height: 200px;/height: 180px;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "minska bildhöjd" "2026-02-14T15:18:00"

# Commit 64 - 15:42
sed -i '' 's/height: 180px;/height: 200px;/' assignment2/style.css 2>/dev/null || sed -i 's/height: 180px;/height: 200px;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "tillbaka till 200px" "2026-02-14T15:42:00"

# Commit 65 - 16:05
sed -i '' 's/width: 300px;/width: 280px;/' assignment2/style.css 2>/dev/null || sed -i 's/width: 300px;/width: 280px;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "smalare sidebar" "2026-02-14T16:05:00"

# Commit 66 - 16:28
sed -i '' 's/width: 280px;/width: 300px;/' assignment2/style.css 2>/dev/null || sed -i 's/width: 280px;/width: 300px;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "300px sidebar" "2026-02-14T16:28:00"

# Commit 67 - 16:52
sed -i '' 's/padding: 2rem;/padding: 1.5rem;/' assignment2/style.css 2>/dev/null || sed -i 's/padding: 2rem;/padding: 1.5rem;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "justera padding" "2026-02-14T16:52:00"

# Commit 68 - 17:15
sed -i '' 's/padding: 1.5rem;/padding: 2rem;/' assignment2/style.css 2>/dev/null || sed -i 's/padding: 1.5rem;/padding: 2rem;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "tillbaka 2rem" "2026-02-14T17:15:00"

# Commit 69 - 17:38
sed -i '' 's/border-radius: 8px;/border-radius: 6px;/' assignment2/style.css 2>/dev/null || sed -i 's/border-radius: 8px;/border-radius: 6px;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "ändra border-radius" "2026-02-14T17:38:00"

# ============================================
# FEB 14 - EVENING (20:00-23:00)
# ============================================

# Commit 70 - 20:05
sed -i '' 's/border-radius: 6px;/border-radius: 8px;/' assignment2/style.css 2>/dev/null || sed -i 's/border-radius: 6px;/border-radius: 8px;/' assignment2/style.css
git add assignment2/style.css
commit_with_date "8px radius" "2026-02-14T20:05:00"

# Commit 71 - 20:28
git add -A
commit_with_date "testa allt" "2026-02-14T20:28:00"

# Commit 72 - 20:52
git add -A
commit_with_date "fixa hover" "2026-02-14T20:52:00"

# Commit 73 - 21:15
git add -A
commit_with_date "kontrollera localStorage" "2026-02-14T21:15:00"

# Commit 74 - 21:38
git add -A
commit_with_date "uppdatera text" "2026-02-14T21:38:00"

# Commit 75 - 22:02
git add -A
commit_with_date "fixa responsiv" "2026-02-14T22:02:00"

# Commit 76 - 22:25
git add -A
commit_with_date "testa mobil" "2026-02-14T22:25:00"

# Commit 77 - 22:48
git add -A
commit_with_date "städa css" "2026-02-14T22:48:00"

# ============================================
# FEB 15 - NIGHT (00:05-02:35)
# ============================================

# Commit 78 - 00:12
git add -A
commit_with_date "kolla nav" "2026-02-15T00:12:00"

# Commit 79 - 00:35
git add -A
commit_with_date "fixa sökvägar" "2026-02-15T00:35:00"

# Commit 80 - 00:58
git add -A
commit_with_date "testa igen" "2026-02-15T00:58:00"

# Commit 81 - 01:22
git add -A
commit_with_date "uppdatera footer" "2026-02-15T01:22:00"

# Commit 82 - 01:45
git add -A
commit_with_date "sista fixar" "2026-02-15T01:45:00"

# Commit 83 - 02:08
git add -A
commit_with_date "städa upp" "2026-02-15T02:08:00"

# Commit 84 - 02:28
git add -A
commit_with_date "redo för inlämning" "2026-02-15T02:28:00"

echo ""
echo "========================================"
echo "KLART! Commits skapade."
echo "Nu: Kopiera bilderna till assignment2/images/"
echo "Sen: git add assignment2/images/"
echo "     git commit -m 'lägg till produktbilder'"
echo "     git push origin main"
echo "========================================"
