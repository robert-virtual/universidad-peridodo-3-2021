void main() {
  bool res = convertBool(1);

  //            condicion   ? se cumple : no se cumpple
  String hola = (res == true) ? "hola" : "Hi!";
  String hi   = res ? "hola" : "Hi!";

  print("res: $res");
  print("hola: $hola");
  print("hi: $hi");
}

bool convertBool(int value) => value == 1 ? true : false;

int sumar(int n,int n2) {
  return n + n2;
}

int sum(int n,int n2) => n + n2;

