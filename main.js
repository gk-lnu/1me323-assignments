import { assignments } from './assignments.js';

function createCard(assignment) {
  const div = document.createElement('div');
  div.classList.add('card');
  
  const h3 = document.createElement('h3');
  h3.textContent = assignment.title;
  
  const p = document.createElement('p');
  p.textContent = assignment.description;
  
  const a = document.createElement('a');
  a.href = assignment.link;
  a.textContent = 'Öppna';
  
  div.append(h3, p, a);
  return div;
}

const container = document.getElementById('cards');

for (const a of assignments) {
  const card = createCard(a);
  container.append(card);
}
