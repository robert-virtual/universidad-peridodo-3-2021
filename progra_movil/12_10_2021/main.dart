
void main() {
  //mostrar elementos menores a 5
  print("Hola mundo");
  List<int> nums = [1, 3, 45, 6656];
  List<int> nums2 = [4, 223, 87, 5, 0];
  nums.addAll(nums2);
  print(nums);
  


  List<String> songs = ["waka waka", "Sopa de caracol", "la perta negra"];

  List<Map<String, dynamic>> people = [
    {
      "name": "Roberto",
      "age": 21,
    },
    {
      "name": "Angela",
      "age": 17,
    },
    {
      "name": "Emerson",
      "age": 15,
    },
  ];
/*
  nums.forEach((n) {
    if (n < 5) {
      print(n);
    }
  });*/
}
