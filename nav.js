import { assignments } from './assignments.js';

export function createNav() {
  const nav = document.createElement('nav');
  const ul = document.createElement('ul');
  
  const homeLi = document.createElement('li');
  const homeA = document.createElement('a');
  homeA.href = 'index.html';
  homeA.textContent = 'Hem';
  homeLi.append(homeA);
  ul.append(homeLi);
  
  for (const assignment of assignments) {
    const li = document.createElement('li');
    const a = document.createElement('a');
    a.href = assignment.link;
    a.textContent = assignment.title;
    li.append(a);
    ul.append(li);
  }
  
  nav.append(ul);
  return nav;
}
