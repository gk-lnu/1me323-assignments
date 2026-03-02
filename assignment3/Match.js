// klass för en match
export class Match {
  #deltagare1;
  #deltagare2;
  #vinnare;
  #element;
  #d1Element;
  #d2Element;

  constructor(deltagare1, deltagare2) {
    this.#deltagare1 = deltagare1;
    this.#deltagare2 = deltagare2;
    this.#vinnare = null;
    this.#element = null;
    this.#d1Element = null;
    this.#d2Element = null;
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

  spela() {
    if (this.#vinnare !== null) return;
    
    const skill1 = this.#deltagare1.skillLevel ?? 5;
    const skill2 = this.#deltagare2.skillLevel ?? 5;
    const chans1 = skill1 / (skill1 + skill2);
    
    if (Math.random() < chans1) {
      this.#vinnare = this.#deltagare1;
    } else {
      this.#vinnare = this.#deltagare2;
    }
    
    this.#uppdateraElement();
  }

  #uppdateraElement() {
    if (!this.#d1Element || !this.#d2Element) return;
    
    if (this.#vinnare === this.#deltagare1) {
      this.#d1Element.classList.add("vinnare");
      this.#d2Element.classList.add("förlorare");
    } else {
      this.#d1Element.classList.add("förlorare");
      this.#d2Element.classList.add("vinnare");
    }
  }

  skapaElement() {
    const div = document.createElement("div");
    div.classList.add("match");
    
    const d1 = document.createElement("div");
    d1.classList.add("deltagare");
    d1.textContent = this.#deltagare1.name;
    this.#d1Element = d1;
    
    const d2 = document.createElement("div");
    d2.classList.add("deltagare");
    d2.textContent = this.#deltagare2.name;
    this.#d2Element = d2;
    
    div.append(d1, d2);
    this.#element = div;
    return div;
  }
}
