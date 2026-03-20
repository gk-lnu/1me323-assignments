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

function filterHouses() {
  const maxPrice = Number(maxPriceInput.value);
  const minScare = Number(scareSlider.value);
  const ghostType = ghostTypeSelect.value;
  const wifiRequired = wifiCheckbox.checked;

  const filtered = allHouses.filter((house) => {
    if (maxPrice && house.pricePerNight > maxPrice) return false;
    if (house.scareLevel < minScare) return false;
    if (ghostType && !house.ghostTypes.includes(ghostType)) return false;
    if (wifiRequired && !house.hasWifi) return false;
    return true;
  });

  renderHouses(filtered);
}

function renderHouses(houses) {
  houseContainer.innerHTML = "";

  if (houses.length === 0) {
    houseContainer.innerHTML = '<p class="no-results">Inga hus matchar dina filter. Prova att ändra dina val.</p>';
    return;
  }

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

scareSlider.addEventListener("input", () => {
  scareLabel.textContent = getScareText(Number(scareSlider.value));
  filterHouses();
});

maxPriceInput.addEventListener("input", filterHouses);
ghostTypeSelect.addEventListener("change", filterHouses);
wifiCheckbox.addEventListener("change", filterHouses);

init();
