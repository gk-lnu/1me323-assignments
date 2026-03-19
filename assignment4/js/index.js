import { fetchHouses, getScareText, showError } from "./utils.js";

const houseContainer = document.getElementById("house-list");

let allHouses = [];

async function init() {
  try {
    allHouses = await fetchHouses();
    renderHouses(allHouses);
  } catch (error) {
    showError(houseContainer, "Kunde inte ladda husen. Försök igen senare.");
  }
}

init();
