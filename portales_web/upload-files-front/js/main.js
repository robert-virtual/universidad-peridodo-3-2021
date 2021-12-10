async function uploader(file) {
  console.log("uploader:", file);
  const formData = new FormData();
  formData.append("file", file);
  const res = await fetch("http://localhost:3030/file", {
    method: "post",
    body: formData,
  });
  console.log(await res.json());
  addUploaed(file.name);
}
const uploads = document.getElementById("uploads");
const dropZone = document.querySelector(".drop-zone");
const totalFiles = document.getElementById("total-files");
totalFiles.style.visibility = "hidden";
function addUploaed(name) {
  const element = document.createElement("div");
  element.classList.add("upload");
  element.textContent = `${name} uploaded!`;
  uploads.append(element);
}

document.addEventListener("change", ({ target }) => {
  if (target.id == "thefiles") {
    console.log(target.files);
    const files = Array.from(target.files);

    files.forEach(uploader);
  }
});

dropZone.addEventListener("dragover", (e) => {
  e.preventDefault();
  dropZone.classList.add("dragover");
});
dropZone.addEventListener("dragleave", (e) => {
  e.preventDefault();
  dropZone.classList.remove("dragover");
});

document.addEventListener("drop", (e) => {
  e.preventDefault();
  const files = Array.from(e.dataTransfer.files);
  totalFiles.textContent = "Total Achivos: " + files.length;
  totalFiles.style.visibility = "visible";
  console.log();
  dropZone.classList.remove("dragover");
  //   e.dataTransfer.files
  dropZone.innerHTML = "";
  files.forEach(addtoDropZone);
});

function addtoDropZone(file) {
  const dropitem = document.createElement("div");
  dropitem.classList.add("drop-item");
  dropitem.textContent = file.name;
  dropZone.append(dropitem);
}
