export async function fetchHouses() {
  const response = await fetch("data/houses.json");
  if (!response.ok) {
    throw new Error("Kunde inte hämta husdata");
  }
  const houses = await response.json();
  return houses;
}

export function getScareText(level) {
  if (level === 1) return "Mysigt";
  if (level === 2) return "Lite läskigt";
  if (level === 3) return "Obehagligt";
  if (level === 4) return "Skräckinjagande";
  if (level === 5) return "Ren terror";
  return "Okänd";
}
