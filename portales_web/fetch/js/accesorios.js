const contenedor = document.getElementById("contenedor");

async function obtenerDatos() {
  const fragment = document.createDocumentFragment();

  const res = await fetch("https://gamestop-api.herokuapp.com/accesorios");
  const datos = await res.json();
  // inicio "foreach"
  datos.forEach((element) => {
    const div = document.createElement("div");
    div.classList.add("item");

    div.innerHTML = `
            <span class="item-title">${element.name}</span>
            <img class="item-img" src="${element.img}" alt="${element.name}">
            <p>${element.price}</p> 
          `;
    fragment.append(div);
  });
  // fin "foreach"
  contenedor.append(fragment);
}

obtenerDatos();
