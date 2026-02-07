import { assignments } from './assignments.js';

function createCard(assignment) {
  const div = document.createElement('div');
  div.classList.add('card');
  
  const h3 = document.createElement('h3');
  h3.textContent = assignment.title;
  
  div.append(h3);
  return div;
}

const container = document.getElementById('cards');

for (const a of assignments) {
  const card = createCard(a);
  container.append(card);
}
