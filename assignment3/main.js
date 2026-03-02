// huvudscript
import { Match } from "./Match.js";

const turneringContainer = document.getElementById("turnering");

async function hämtaDeltagare() {
  const response = await fetch("contestants.json");
  const data = await response.json();
  return data;
}

function skapaRunda(deltagare) {
  const matcher = [];
  for (let i = 0; i < deltagare.length; i += 2) {
    const match = new Match(deltagare[i], deltagare[i + 1]);
    matcher.push(match);
  }
  return matcher;
}

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

async function init() {
  const deltagare = await hämtaDeltagare();
  const kvartsfinal = skapaRunda(deltagare);
  
  const bracket = document.createElement("div");
  bracket.classList.add("bracket");
  bracket.append(renderaRunda(kvartsfinal, "Kvartsfinal"));
  
  turneringContainer.append(bracket);
}

init();
