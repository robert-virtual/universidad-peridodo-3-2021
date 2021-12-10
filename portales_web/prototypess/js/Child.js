import { Father } from "./Father.js";

export class Child extends Father {
  constructor(name, age) {
    super(name, age);
    this.hobbies = [];
  }
  greet() {
    console.log("hey I'm a child");
  }
}
