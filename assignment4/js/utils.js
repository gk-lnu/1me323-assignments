export async function fetchHouses() {
  const response = await fetch("data/houses.json");
  if (!response.ok) {
    throw new Error("Kunde inte hämta husdata");
  }
  const houses = await response.json();
  return houses;
}
