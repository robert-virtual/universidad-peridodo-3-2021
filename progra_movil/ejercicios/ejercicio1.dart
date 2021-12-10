void main() {

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  
  int totalLen = a.length+b.length;
  int j = -1; 

  var c = List.generate(totalLen,(i){
    
    if(i < a.length ){
      return a[i];
    
    } else {
      j++;      
      return b[j]; 
    }
  });
  
  print(c);

  
}