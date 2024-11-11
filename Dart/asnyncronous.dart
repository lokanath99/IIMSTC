// void main()async {
//   print("hello step 1");
//   print(await Future.delayed(Duration(seconds: 3), ()=>{print("hello step 2")}));
//   // print("hello step 2");//takes 3 sec to exec
//   print("hello step 3");
//   print("hello step 4");

// }

// future -> successfull and unsuccessfull
// void main()  async {
//   print("Start");
//   print( await getData() );
//   print("End");
// }

// getData() async {
//   String data = await middleFunction();
//   return data;
// }

// Future<String> middleFunction() {
//   return Future.delayed(Duration(seconds: 3), () => "Hello this is te data: Blaa.....");
// }


// void main() async {
//   print('fetching');
//   print(await data());
//   print('completed');
// }

// data() async {
//   String dat =  await middleFunction(time: 3);
//   return dat;
// }

// Future<String> middleFunction({required int time}) {
//   return Future.delayed(Duration(seconds: time), () => 'This is the data: Blaa blaa.....'; // This value is returned after the delay
//   });
// }

