void main() async{
  // print("hello step 1");
  // await Future.delayed(Duration(seconds: 3), ()=>{print("hello step 2")});
  // // print("hello step 2");//takes 3 sec to exec
  // print("hello step 3");
  // print("hello step 4");
  print('start');
  String data = await getData();
  print(data);
  print('end');

}

Future getData() async{
  String Data = await Future.delayed(Duration(seconds: 3), () => "Hello this is te data: Blaa.....");;
  return Data;
}



// Future<String> middleFunction(){
//   return 
// }