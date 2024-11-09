void main(){
  
  // returntype name(para1, para2....para n){
  //   //statements
  // }
  

  String printFunc([String statement = 'Don joe']){
    statement += " hello this is you statement";
    return statement;
  }

  // var str = printFunc("Lokanath");
  // print(str);


  // int? add(int a, int b, [int? c]){
  //   print(a);
  //   print(b);
  //   print(c);
  //   // c ??= 7;
  //   return c;
  // }

  // print(add(1, 5, 7));

  // double? sum({double? a, double? b}){
  //   print(a);
  //   print(b);
  //   return a;
  // };

  // print(sum(b:5.6, a:5.6));


  // void printInfo({required String name , String? gender }){
  //   print("My name is ${name} and my gender is ${gender}");
  // }

  // printInfo(name: "test");

  // "asldfkja"
  // void printInfo({required String name,required String gender}){
  //   print("My name is ${name} and my gender is ${gender}");
  // }

  // var str = "asdfasdf";
  // var func = (){
  //     print("hello from anonymous function");
  //     return 5;
  // };

  // List<int> lst = [1,2,3,6,5,4,7,8,9];
  // lst.forEach( (asdf){
  //   print(asdf);
  // });

  // func();

  // var func2 = () => print("hello this is a arrow function");
  // var b;
  // var even = (a) => b =a+=2; 
  // func2();
  // even(5);
  // print(b);
}