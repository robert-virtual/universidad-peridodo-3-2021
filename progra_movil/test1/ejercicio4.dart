void main() {
  List<int> nums = [5, 8, 15, 1, 4, 6, 6, 9, 5, 45, 4];
  List<int> nums2 = [5, 10, 5, 20, 60]; // 100
  var suma = sum(nums);
  var suma2 = sum(nums2);
  print("Suma: $suma");
  print("Suma2: $suma2");

  var suma3 = nums.reduce((value, e) => value + e);
  var suma4 = nums2.reduce((value, e) => value + e);
  print("suma3: $suma3");
  print("suma4: $suma4");
}

double sum(List<int> nums) {
  double res = 0;
  nums.forEach((n) => res += n);
  return res;
}
