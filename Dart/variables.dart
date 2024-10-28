void main(){
  var a = 1;
  // a = "tet";  not possible because its a statically typed lang
  print(a);

  const b = 9;
  final c = "test";
  print("$b $c");

  // final is the runtime constant and const is compile time

  // type anotations
  // number datatypes
  int e = 1;
  print(e);
  double y = 5.777;
  print(y);

  // String 
  String s = "tesrer";
  print(s);

  // Boolean
  bool u = true;
  print(u);

  // iteratable data types list set and dictionary
  List lst = [1,"3", u];
  List<double> lst_d = [5.6, 7.6];//only double is permitted in the list as the type is mentioned
  print("$lst , $lst_d");
  

}