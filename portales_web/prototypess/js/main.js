import { Child } from "./Child.js";
import { Father } from "./Father.js";
import Person from "./Person.js";
import Student from "./Student.js";

const person = new Person("Emerson", 21);
person.greet();
console.log(person);

const student = new Student("Robert", 21);

console.log(student);
student.greet();
console.log(student.name);

console.group("clases");
const father1 = new Father("roberto", 45);
console.log(father1);
const child1 = new Child("Roberto", 21);
console.log(child1);
console.log("child name", child1.name);
father1.greet();
child1.greet();

console.groupEnd("clases");
