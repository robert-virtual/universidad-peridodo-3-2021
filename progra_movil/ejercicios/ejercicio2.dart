void main() {

  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  
  
  a.forEach((e){
    
    print(e % 2 == 0 ? e : "");
  });
 

  
}