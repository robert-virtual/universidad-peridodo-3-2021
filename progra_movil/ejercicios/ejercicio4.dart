void main() {
  
  //lista dada

  List<int> a = [5, 10, 15, 20, 25];
  
  //opcion 1
  List<int> b = List.generate(a.length, (i) {
    if (i % 2 == 0) {
      return a[0];
    } else {
      return a[a.length - 1];
    }
  });

  print("Lista:");
  print(a);

  print("\nopcion 1:");
  print(b);

  //opcion 2

  List<int> c = [];
  int idx = 0;
  for (int e in a) {
    if (idx % 2 == 0) {
      c.insert(0, a[0]);
    } else {
      c.insert(0, a[a.length - 1]);
    }
    idx++;
  }
  print("\nopcion 2:");
  print(c);
}
