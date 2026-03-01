// klass för en match
export class Match {
  #deltagare1;
  #deltagare2;
  #vinnare;

  constructor(deltagare1, deltagare2) {
    this.#deltagare1 = deltagare1;
    this.#deltagare2 = deltagare2;
    this.#vinnare = null;
  }

  get deltagare1() {
    return this.#deltagare1;
  }

  get deltagare2() {
    return this.#deltagare2;
  }

  get vinnare() {
    return this.#vinnare;
  }
}
