const links = document.querySelectorAll(".menu a");

links.forEach((e, i) => {
  e.addEventListener("click", () => {
    console.log(links);
    console.log(e.getAttribute("status"));
  });
});
