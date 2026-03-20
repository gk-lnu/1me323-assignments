export default class Booking {
  #house;
  #checkIn;
  #days;
  #extras;
  #promoCode;

  constructor(house) {
    this.#house = house;
    this.#checkIn = "";
    this.#days = 1;
    this.#extras = {
      breakfast: false,
      ghostTour: false,
      seance: false
    };
    this.#promoCode = "";
  }

  set checkIn(value) {
    this.#checkIn = value;
  }

  set days(value) {
    this.#days = Number(value);
  }

  set promoCode(value) {
    this.#promoCode = value.trim();
  }

  setExtra(name, checked) {
    this.#extras[name] = checked;
  }

  get hasDiscount() {
    return this.#promoCode.toUpperCase() === "GHOST20";
  }

  calculateTotal() {
    let total = this.#house.pricePerNight * this.#days;

    if (this.#extras.breakfast) {
      total += 100 * this.#days;
    }

    if (this.#extras.ghostTour) {
      total += 300;
    }

    if (this.#extras.seance) {
      total += 500;
    }

    if (this.hasDiscount) {
      total = total * 0.8;
    }

    return total;
  }

  validate() {
    if (!this.#checkIn) {
      throw new Error("Du måste välja ett incheckningsdatum.");
    }

    const today = new Date().toISOString().split("T")[0];
    if (this.#checkIn < today) {
      throw new Error("Incheckningsdatum kan inte vara tidigare än idag.");
    }

    if (this.#days < 1) {
      throw new Error("Antal dagar måste vara minst 1.");
    }
  }

  generateConfirmation() {
    const extrasList = [];
    if (this.#extras.breakfast) extrasList.push("Frukost");
    if (this.#extras.ghostTour) extrasList.push("Spökvandring");
    if (this.#extras.seance) extrasList.push("Nattlig seans");

    const extrasText = extrasList.length > 0 ? extrasList.join(", ") : "Inga tillägg";
    const total = this.calculateTotal();

    let html = '<h3>Bokningsbekräftelse</h3>' +
      '<p><strong>Hus:</strong> ' + this.#house.name + '</p>' +
      '<p><strong>Incheckning:</strong> ' + this.#checkIn + '</p>' +
      '<p><strong>Antal dagar:</strong> ' + this.#days + '</p>' +
      '<p><strong>Tillägg:</strong> ' + extrasText + '</p>';

    if (this.hasDiscount) {
      html += '<p><strong>Kampanjkod:</strong> GHOST20 (-20%)</p>';
    }

    html += '<p><strong>Totalpris:</strong> ' + total + ' kr</p>' +
      '<p>Tack för din bokning! Vi ses snart... om du vågar.</p>';

    return html;
  }
}
