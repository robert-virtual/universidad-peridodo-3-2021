const sections = document.querySelectorAll("main section");
const links = Array.from(document.querySelectorAll("nav a"));
console.log(sections);
console.log(links);
console.log("hash example:", links[0].hash);
let current = document.createElement("a");

// magic
const observer = new IntersectionObserver(
  (entries) => {
    console.log(entries);
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        console.log("id example:", entry.target.id);
        current.classList.remove("active");
        let newCurrent = links.find(
          (link) => link.hash == "#" + entry.target.id
        );

        newCurrent.classList.add("active");
        current = newCurrent;
      }
    });
  },
  { threshold: 0.5 }
);

sections.forEach((sec) => observer.observe(sec));
