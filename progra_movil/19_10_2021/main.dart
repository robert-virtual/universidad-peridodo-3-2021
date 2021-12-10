void main() {
  printDate();
  int total = sum(45, 9);
  print("Total: $total");
  total = sumar(45, 9);
  print("Total: $total");
  total = suma([
    5,
    5,
    5,
  ]);
  print("Total: $total");
}

void printDate() {
  print(DateTime.now());
}

int sum(int n, int n1, [String msg = "sumando..."]) {
  print(msg);
  return n + n1;
}

int suma(List<int> nums) {
  return nums.reduce((value, element) => value + element);
}

//DateTime? date (? = nullable)
int sumar(int n, int n1, {String msg = "sumando...", DateTime? date}) {
  date = DateTime.now();
  print("$msg $date");
  return n + n1;
}
