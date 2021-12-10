function Person(name, age) {
  this.name = name;
  this.age = age;
}
Person.prototype.hola = "Person";
Person.prototype.greet = function () {
  console.log("Person says:", this.name);
};

export default Person;
