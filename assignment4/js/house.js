import { fetchHouses, getScareText, showError } from "./utils.js";

const houseDetail = document.getElementById("house-detail");
const bookingSection = document.getElementById("booking-section");
const weatherSection = document.getElementById("weather-section");

async function init() {
  const params = new URLSearchParams(window.location.search);
  const id = Number(params.get("id"));

  if (!id) {
    showError(houseDetail, 'Inget hus-id angivet. <a href="index.html">Tillbaka till översikten</a>');
    bookingSection.style.display = "none";
    weatherSection.style.display = "none";
    return;
  }

  try {
    const houses = await fetchHouses();
    const house = houses.find((h) => h.id === id);

    if (!house) {
      showError(houseDetail, 'Huset kunde inte hittas. <a href="index.html">Tillbaka till översikten</a>');
      bookingSection.style.display = "none";
      weatherSection.style.display = "none";
      return;
    }

    renderHouse(house);
  } catch (error) {
    showError(houseDetail, "Något gick fel vid laddning av husdata.");
    bookingSection.style.display = "none";
    weatherSection.style.display = "none";
  }
}

function renderHouse(house) {
  const ghostList = house.ghostTypes.join(", ");
  const wifiText = house.hasWifi ? "Ja" : "Nej";

  houseDetail.innerHTML =
    '<a href="index.html" class="back-link">← Tillbaka till alla hus</a>' +
    '<img src="images/' + house.image + '" alt="' + house.name + '" class="detail-image">' +
    '<h1>' + house.name + '</h1>' +
    '<p class="location">' + house.location + '</p>' +
    '<p class="description">' + house.description + '</p>' +
    '<div class="info-grid">' +
      '<p><strong>Pris:</strong> ' + house.pricePerNight + ' kr/natt</p>' +
      '<p><strong>Skräcknivå:</strong> ' + getScareText(house.scareLevel) + '</p>' +
      '<p><strong>Spöktyper:</strong> ' + ghostList + '</p>' +
      '<p><strong>WiFi:</strong> ' + wifiText + '</p>' +
    '</div>';
}

init();
