let root = document.documentElement;

document.addEventListener("click", ({ target }) => {
  if (target.matches("#btnTheme")) {
    target.textContent = target.textContent == "🌞" ? "🌛" : "🌞";
    root.style.setProperty(
      "--color",
      target.textContent == "🌞" ? "white" : "#333"
    );
    root.style.setProperty(
      "--bg-color",
      target.textContent == "🌞" ? "#333" : "white"
    );
  }
});
