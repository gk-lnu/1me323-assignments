import { fetchHouses, getScareText, showError } from "./utils.js";

const houseDetail = document.getElementById("house-detail");

async function init() {
  const params = new URLSearchParams(window.location.search);
  const id = Number(params.get("id"));
}

init();
