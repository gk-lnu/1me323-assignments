import { assignments } from './assignments.js';

const container = document.getElementById('cards');

for (const a of assignments) {
  const div = document.createElement('div');
  div.textContent = a.title;
  container.append(div);
}
