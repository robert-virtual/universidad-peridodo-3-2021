import 'dart:math';

void main() {
  int n = Random().nextInt(100);
  print("$n es primo?: ${isPrime(n)}");
}

bool isPrime(n) {
  int count = 0;
  if (n == 0) return false;
  List<int> nums = List.generate(n + 1, (x) => x + 1);
  for (int i in nums) {
    if (n % i == 0) {
      count++;
    }
    if (count > 2) {
      return false;
    }
  }
  return count <= 2;
}
