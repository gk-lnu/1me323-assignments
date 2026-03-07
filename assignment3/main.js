import { Match } from "./Match.js";

const simuleraKnapp = document.getElementById("simulera");
const startaOmKnapp = document.getElementById("starta-om");

let kvartsfinal = [];
let semifinal = [];
let final = [];
let currentRunda = "kvartsfinal";

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

function hämtaVinnare(matcher) {
  return matcher.map(match => match.vinnare);
}

function renderaRunda(matcher, container) {
  for (const match of matcher) {
    container.append(match.skapaElement());
  }
}

function simuleraKvartsfinal() {
  for (const match of kvartsfinal) {
    match.spela();
  }
  
  const semiDeltagare = hämtaVinnare(kvartsfinal);
  semifinal = skapaRunda(semiDeltagare);
  renderaRunda(semifinal, document.getElementById("semifinal"));
  
  currentRunda = "semifinal";
  simuleraKnapp.textContent = "Simulera Semifinal";
}

function simulerasemifinal() {
  for (const match of semifinal) {
    match.spela();
  }
  
  const finalDeltagare = hämtaVinnare(semifinal);
  final = skapaRunda(finalDeltagare);
  renderaRunda(final, document.getElementById("final"));
  
  currentRunda = "final";
  simuleraKnapp.textContent = "Simulera Final";
}

function simuleraFinal() {
  for (const match of final) {
    match.spela();
  }
  
  currentRunda = "klar";
  simuleraKnapp.style.display = "none";
}

function hanteraSimulera() {
  if (currentRunda === "kvartsfinal") {
    simuleraKvartsfinal();
  } else if (currentRunda === "semifinal") {
    simulerasemifinal();
  } else if (currentRunda === "final") {
    simuleraFinal();
  }
}

async function startaTurnering() {
  document.getElementById("kvartsfinal").innerHTML = "";
  document.getElementById("semifinal").innerHTML = "";
  document.getElementById("final").innerHTML = "";
  
  const deltagare = await hämtaDeltagare();
  
  kvartsfinal = skapaRunda(deltagare);
  renderaRunda(kvartsfinal, document.getElementById("kvartsfinal"));
  
  semifinal = [];
  final = [];
  currentRunda = "kvartsfinal";
  simuleraKnapp.textContent = "Simulera Kvartsfinal";
  simuleraKnapp.style.display = "inline-block";
}

simuleraKnapp.addEventListener("click", hanteraSimulera);
startaOmKnapp.addEventListener("click", startaTurnering);

startaTurnering();
