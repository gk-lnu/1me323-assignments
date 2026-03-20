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
}
