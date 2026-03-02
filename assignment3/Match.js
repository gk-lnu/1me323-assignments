// klass för en match
export class Match {
  #deltagare1;
  #deltagare2;
  #vinnare;
  #element;

  constructor(deltagare1, deltagare2) {
    this.#deltagare1 = deltagare1;
    this.#deltagare2 = deltagare2;
    this.#vinnare = null;
    this.#element = null;
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

  skapaElement() {
    const div = document.createElement("div");
    div.classList.add("match");
    
    const d1 = document.createElement("div");
    d1.classList.add("deltagare");
    d1.textContent = this.#deltagare1.name;
    
    const d2 = document.createElement("div");
    d2.classList.add("deltagare");
    d2.textContent = this.#deltagare2.name;
    
    div.append(d1, d2);
    this.#element = div;
    return div;
  }
}
