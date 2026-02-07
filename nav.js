import { assignments } from './assignments.js';

export function createNav() {
  const nav = document.createElement('nav');
  const ul = document.createElement('ul');
  
  const li = document.createElement('li');
  const a = document.createElement('a');
  a.href = 'index.html';
  a.textContent = 'Hem';
  li.append(a);
  ul.append(li);
  
  nav.append(ul);
  return nav;
}
