void main() {
  String frase = "Bienvenido al Crustáceo Cascasarudo!";
  List<String> words = frase.split(" ");
  List<String> reverse = [];
  words.forEach((e) {
    /* "insert" agrega el elemento en 
    la posicion indicada en este caso 0(el inicio) por 
    lo q el primer elemento de la lista original
    quedara al fin de esta nueva lista (elementos inversos)*/
    reverse.insert(0, e);
  });

  print(words);
  print(reverse);

  // opcion 2
  List<String> lista2 = words.reversed.toList();
  print("opcion 2: lista2");
  print(lista2);
}
