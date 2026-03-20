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
}
