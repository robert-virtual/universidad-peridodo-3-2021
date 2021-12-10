import Person from "./Person.js";

// name, age
function Student(name, age) {
  this.super = Person;
  this.super(name, age);
  this.carrer = "";
}
// heredar
Student.prototype = new Person();
Student.prototype.constructor = Student;
Student.prototype.greet = function () {
  console.log("I'm an student, my name is " + this.name);
};

export default Student;
