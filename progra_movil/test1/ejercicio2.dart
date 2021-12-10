void main() {
  String frase = "Bienvenido al Crustáceo Cascasarudo!";
  List<String> words = frase.split(" ");
  print(words);
  var unido = "";
  words.forEach((e) {
    print(e);
    unido += "$e ";
  });
  print("unido: $unido");

  
}
