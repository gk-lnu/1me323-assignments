import { assignments } from './assignments.js';

export function createNav() {
  const nav = document.createElement('nav');
  const ul = document.createElement('ul');
  
  const path = window.location.pathname;
  const isSubpage = path.includes('/assignment');
  
  const homeLi = document.createElement('li');
  const homeA = document.createElement('a');
  if (isSubpage) {
    homeA.href = '../index.html';
  } else {
    homeA.href = 'index.html';
  }
  homeA.textContent = 'Hem';
  homeLi.append(homeA);
  ul.append(homeLi);
  
  for (const assignment of assignments) {
    const li = document.createElement('li');
    const a = document.createElement('a');
    if (isSubpage) {
      a.href = '../' + assignment.link;
    } else {
      a.href = assignment.link;
    }
    a.textContent = assignment.title;
    li.append(a);
    ul.append(li);
  }
  
  nav.append(ul);
  return nav;
}
