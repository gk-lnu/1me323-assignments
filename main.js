import { assignments } from './assignments.js';
import { createNav } from './nav.js';

function createCard(assignment) {
  const article = document.createElement('article');
  article.classList.add('card');
  
  const h3 = document.createElement('h3');
  h3.textContent = assignment.title;
  
  const p = document.createElement('p');
  p.textContent = assignment.description;
  
  const a = document.createElement('a');
  a.href = assignment.link;
  a.textContent = 'Gå till uppgift';
  
  article.append(h3, p, a);
  return article;
}

function renderCards() {
  const container = document.getElementById('cards');
  for (const assignment of assignments) {
    const card = createCard(assignment);
    container.append(card);
  }
}

const header = document.querySelector('header');
header.append(createNav());

renderCards();
