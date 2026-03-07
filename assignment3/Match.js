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

  get isPlayed() {
    return this.#vinnare !== null;
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

  #skapaDeltagareElement(deltagare) {
    const div = document.createElement("div");
    div.classList.add("deltagare");
    
    const namn = document.createElement("span");
    namn.classList.add("namn");
    namn.textContent = deltagare.name;

    const skill = document.createElement("span");
    skill.classList.add("skill");
    skill.textContent = "Nivå: " + (deltagare.skillLevel ?? 5);
    
    const catchphrase = document.createElement("span");
    catchphrase.classList.add("catchphrase");
    const phrase = deltagare.catchphrase ?? "...";
    catchphrase.textContent = phrase === "..." ? phrase : "\"" + phrase + "\"";
    
    div.append(namn, skill, catchphrase);
    return div;
  }

  skapaElement() {
    const div = document.createElement("div");
    div.classList.add("match");
    
    const d1 = this.#skapaDeltagareElement(this.#deltagare1);
    this.#d1Element = d1;
    
    const vs = document.createElement("div");
    vs.classList.add("vs");
    vs.textContent = "VS";
    
    const d2 = this.#skapaDeltagareElement(this.#deltagare2);
    this.#d2Element = d2;
    
    div.append(d1, vs, d2);
    this.#element = div;
    return div;
  }
}
