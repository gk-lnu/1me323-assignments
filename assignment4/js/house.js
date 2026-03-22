import { fetchHouses, getScareText, showError } from "./utils.js";
import Booking from "./booking.js";

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
    setupBooking(house);
    fetchWeather(house.coordinates);
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

async function fetchWeather(coordinates) {
  try {
    const url = "https://api.open-meteo.com/v1/forecast?latitude=" + coordinates.lat + "&longitude=" + coordinates.lng + "&current=temperature_2m,wind_speed_10m&daily=temperature_2m_max,temperature_2m_min&timezone=auto&forecast_days=3";

    const response = await fetch(url);
    if (!response.ok) {
      throw new Error("Kunde inte hämta väderdata");
    }

    const data = await response.json();
    renderWeather(data);
  } catch (error) {
    weatherSection.innerHTML = '<h2>Väderprognos</h2><p class="error-message">Kunde inte ladda väderdata.</p>';
  }
}

function renderWeather(data) {
  const current = data.current;
  const daily = data.daily;

  let forecastHTML = "";
  for (let i = 0; i < daily.time.length; i++) {
    forecastHTML += '<div class="forecast-day">' +
      '<p class="date">' + daily.time[i] + '</p>' +
      '<p>' + daily.temperature_2m_max[i] + '° / ' + daily.temperature_2m_min[i] + '°</p>' +
      '</div>';
  }

  weatherSection.innerHTML = '<h2>Väderprognos</h2>' +
    '<p>Just nu: ' + current.temperature_2m + '°C, vind ' + current.wind_speed_10m + ' km/h</p>' +
    '<div class="forecast-grid">' + forecastHTML + '</div>';
}

function setupBooking(house) {
  const booking = new Booking(house);

  const checkInInput = document.getElementById("check-in");
  const daysInput = document.getElementById("days");
  const breakfastCheck = document.getElementById("breakfast");
  const ghostTourCheck = document.getElementById("ghost-tour");
  const seanceCheck = document.getElementById("seance");
  const promoInput = document.getElementById("promo-code");
  const totalDisplay = document.getElementById("total-price");
  const bookBtn = document.getElementById("book-btn");
  const confirmationDiv = document.getElementById("booking-confirmation");
  const errorDiv = document.getElementById("booking-error");

  const today = new Date().toISOString().split("T")[0];
  checkInInput.min = today;

  function updatePrice() {
    booking.checkIn = checkInInput.value;
    booking.days = daysInput.value;
    booking.setExtra("breakfast", breakfastCheck.checked);
    booking.setExtra("ghostTour", ghostTourCheck.checked);
    booking.setExtra("seance", seanceCheck.checked);
    booking.promoCode = promoInput.value;

    const total = booking.calculateTotal();
    totalDisplay.textContent = total + " kr";
  }

  checkInInput.addEventListener("input", updatePrice);
  daysInput.addEventListener("input", updatePrice);
  breakfastCheck.addEventListener("change", updatePrice);
  ghostTourCheck.addEventListener("change", updatePrice);
  seanceCheck.addEventListener("change", updatePrice);
  promoInput.addEventListener("input", updatePrice);

  bookBtn.addEventListener("click", () => {
    errorDiv.textContent = "";
    confirmationDiv.innerHTML = "";

    try {
      booking.validate();
      confirmationDiv.innerHTML = booking.generateConfirmation();
      confirmationDiv.classList.add("visible");
    } catch (error) {
      errorDiv.textContent = error.message;
    }
  });

  updatePrice();
}

init();
