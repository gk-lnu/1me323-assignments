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
