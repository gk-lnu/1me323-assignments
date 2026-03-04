// huvudscript för turneringen
import { Match } from "./Match.js";

const turneringContainer = document.getElementById("turnering");
const startaOmKnapp = document.getElementById("starta-om");

// hämta deltagare från json
async function hämtaDeltagare() {
  const response = await fetch("contestants.json");
  const data = await response.json();
  return data;
}

// skapa matcher från en lista med deltagare
function skapaRunda(deltagare) {
  const matcher = [];
  for (let i = 0; i < deltagare.length; i += 2) {
    const match = new Match(deltagare[i], deltagare[i + 1]);
    matcher.push(match);
  }
  return matcher;
}

// hämta vinnare från en lista med matcher
function hämtaVinnare(matcher) {
  return matcher.map(match => match.vinnare);
}

// rendera en runda med matcher
function renderaRunda(matcher, titel) {
  const rundaDiv = document.createElement("div");
  rundaDiv.classList.add("round");
  
  const rubrik = document.createElement("h2");
  rubrik.textContent = titel;
  rundaDiv.append(rubrik);
  
  for (const match of matcher) {
    rundaDiv.append(match.skapaElement());
  }
  
  return rundaDiv;
}

// starta turneringen
async function startaTurnering() {
  turneringContainer.innerHTML = "";
  
  const deltagare = await hämtaDeltagare();
  
  const bracket = document.createElement("div");
  bracket.classList.add("bracket");
  
  // kvartsfinal
  const kvartsfinal = skapaRunda(deltagare);
  for (const match of kvartsfinal) {
    match.spela();
  }
  bracket.append(renderaRunda(kvartsfinal, "Kvartsfinal"));
  
  // semifinal
  const semifinal = skapaRunda(hämtaVinnare(kvartsfinal));
  for (const match of semifinal) {
    match.spela();
  }
  bracket.append(renderaRunda(semifinal, "Semifinal"));
  
  // final
  const final = skapaRunda(hämtaVinnare(semifinal));
  for (const match of final) {
    match.spela();
  }
  bracket.append(renderaRunda(final, "Final"));
  
  turneringContainer.append(bracket);
}

// event listeners
startaOmKnapp.addEventListener("click", startaTurnering);

// starta direkt
startaTurnering();
