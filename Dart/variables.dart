void main(){
  // var a = 1;
  // // a = "tet";  not possible because its a statically typed lang
  // print(a);

  // const b = 9;
  // final c = "test";
  // print("$b $c");

  // // final is the runtime constant and const is compile time

  // // type anotations
  // // number datatypes
  // int e = 1;
  // print(e);
  // double y = 5.777;
  // print(y);

  // // String 
  // String s = "tesrer";
  // String multiLineString = '''my name is lokanath 
  // im a tech enthu
  // i live in banglore '''; 
  // // multiLineString
  // print(s);
  // print(multiLineString);



  // // Boolean
  // bool u = true;
  // print(u);

  // iteratable data types list set and dictionary
  // List lst = [1,"3"];
  // List lst_d = [, 7.6];//only double is permitted in the list as the type is mentioned
  // print("$lst , $lst_d");

  // having null values in the code
  // int test;
  // print(test);

  // var name = "lokanat";
  // var age = 5;
  // print("My name is ${name} and im of age ${age}");
  // // class person => name

  // List operations []
  var lst = [1,2,3,4,5,6,7,8,9];
  //        [0,1,2,3,4,5,6,7,8];
  //  print(lst[2]);
  print("value of lst[0] is ${lst[0]}");

  // lst.add(6);
  // lst.addAll([2,5,6]);
  // lst.insert(3, 10);
  // lst.insertAll(1,[1,2]);
  // print(lst);

  // lst[3] = 10;
  // print(lst);
    // lst.replaceRange(2, 5, <int>[13,14,15]);
    // print(lst);

  // lst.remove(9);
  // var rem = lst.removeLast();
  // lst.removeRange(3,8);//
  // print("the latest updated list is ${lst} removed");
  lst.forEach((element) {
    print(element);
  },);



}