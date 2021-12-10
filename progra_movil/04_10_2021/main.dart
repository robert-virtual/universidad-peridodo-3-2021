void main() {
  double rectangulo = calcArea(12, 5);
  print("Area cuadrado es: $rectangulo");

  double triangle = calcArea(12, 5, true);
  print("Area rectangulo es: $triangle");
}

double calcArea(double width, double height, [bool isTriangle = false]) =>
    isTriangle ? (width * height) / 2 : width * height;


String saludar() => "Hola";

String sayHi(){
  return "Hola";
}





