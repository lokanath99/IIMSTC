void main(){
  
  // returntype name(para1, para2....para n){
  //   //statements
  // }
  

  String printFunc([String statement = 'Don joe']){
    statement += " hello this is you statement";
    return statement;
  }

  var str = printFunc("Lokanath");
  print(str);


  int add(int a, int b){
    print(a);
    print(b);
    return a+b;
  }

  print(add(1, 5));

  double? sum({double? a, double? b }){
    print(a);
    print(b);
    return a;
  };

  print(sum(b:5.6, a:5.6));
}