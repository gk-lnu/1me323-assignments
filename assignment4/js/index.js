import { fetchHouses, getScareText, showError } from "./utils.js";

const houseContainer = document.getElementById("house-list");
const maxPriceInput = document.getElementById("max-price");
const scareSlider = document.getElementById("scare-level");
const scareLabel = document.getElementById("scare-label");
const ghostTypeSelect = document.getElementById("ghost-type");
const wifiCheckbox = document.getElementById("wifi-required");

let allHouses = [];

async function init() {
  try {
    allHouses = await fetchHouses();
    populateGhostTypes();
    renderHouses(allHouses);
  } catch (error) {
    showError(houseContainer, "Kunde inte ladda husen. Försök igen senare.");
  }
}

function populateGhostTypes() {
  const types = [];
  for (const house of allHouses) {
    for (const type of house.ghostTypes) {
      if (!types.includes(type)) {
        types.push(type);
      }
    }
  }
  types.sort();

  for (const type of types) {
    const option = document.createElement("option");
    option.value = type;
    option.textContent = type;
    ghostTypeSelect.appendChild(option);
  }
}

function renderHouses(houses) {
  houseContainer.innerHTML = "";

  for (const house of houses) {
    const card = document.createElement("article");
    card.className = "house-card";

    card.innerHTML =
      '<img src="images/' + house.image + '" alt="' + house.name + '">' +
      '<div class="card-content">' +
        '<h2>' + house.name + '</h2>' +
        '<p class="location">' + house.location + '</p>' +
        '<p class="price">' + house.pricePerNight + ' kr/natt</p>' +
        '<p class="scare">Skräcknivå: ' + getScareText(house.scareLevel) + '</p>' +
        '<a href="house.html?id=' + house.id + '" class="btn">Läs mer och boka</a>' +
      '</div>';

    houseContainer.appendChild(card);
  }
}

init();
