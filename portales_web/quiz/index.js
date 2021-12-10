const content = document.querySelector(".content");
const question = document.getElementById("question");
const res = document.getElementById("res");
let counter = 0;

const questions = [
  { res: "", title: "Cual es su Nombre" },
  { res: "", title: "Cual es su Edad" },
  { res: "", title: "Estado Civil" },
  { res: "", title: "Tiene experiencia en desarrollo web" },
  { res: "", title: "Languaje de programacion favorito" },
  { res: "", title: "Habla ingles" },
];
document.addEventListener("click", ({ target }) => {
  if (target.id == "btn-right") {
    animateContent();
    questions[counter - 1].res = res.value;
    nextQuestion();
    console.log(questions);
  }
  if (target.id == "btn-left") {
    nextQuestion(-1);
  }
});

function nextQuestion(to = 1) {
  console.log(counter);
  if (counter == questions.length) {
    counter = 0;
  }
  if (counter == questions.length) {
    counter = 0;
  }


  question.textContent = questions[counter].title;
  res.value = questions[counter].res;

  counter += to;
}

function animateContent() {
  content.classList.add("go-left");
  setTimeout(() => {
    content.style.opacity = 0;
    content.classList.remove("go-left");
    content.classList.add("go-right");
  }, 250);
  setTimeout(() => {
    content.style.opacity = 1;
    content.classList.remove("go-right");
  }, 500);
}
