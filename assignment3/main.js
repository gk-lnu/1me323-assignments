// huvudscript
import { Match } from "./Match.js";

async function hämtaDeltagare() {
  const response = await fetch("contestants.json");
  const data = await response.json();
  return data;
}

async function init() {
  const deltagare = await hämtaDeltagare();
  console.log(deltagare);
}

init();
