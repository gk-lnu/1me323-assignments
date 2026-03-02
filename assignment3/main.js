// huvudscript
import { Match } from "./Match.js";

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

async function init() {
  const deltagare = await hämtaDeltagare();
  const kvartsfinal = skapaRunda(deltagare);
  console.log(kvartsfinal);
}

init();
