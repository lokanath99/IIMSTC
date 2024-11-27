import 'package:flutter/material.dart';
import 'package:my_app/components/my_nav_bars.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:my_app/components/my_text_field.dart';
import 'package:my_app/model/todo.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController cont = TextEditingController();
  List<Todo> todo_list = [];
  getData() async{

    var uri = Uri.https('jsonplaceholder.typicode.com', '/todos/');
    var response = await http.get(uri);
    if(response.statusCode == 200){
      var data = convert.jsonDecode(response.body) as List<dynamic>;
      data.forEach((todos){
        var todo = todos as Map<String, dynamic>;
        todo_list += [Todo(title: todo["title"], completed: todo["completed"], userId: todo["userId"])];
      });
      print(todo_list.length);

    }

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [],
      ),
      // drawer: MyNavBars(context: context),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.settings), label: "setting"),
          NavigationDestination(icon: Icon(Icons.person), label: "Proson")
        ],
        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, "/");
          } else if (index == 1) {
            Navigator.pushNamed(context, "/setting");
          } else {
            Navigator.pushNamed(context, "/profile");
          }
        },
      ),

      body: Text("data")
    );
  }
}



// BottomNavigationBar(
//
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.home),
// label: "Home"
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.settings),
// label: "Setting"
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.person),
// label: "Profile"
// ),
// ],
//
// onTap: (index){
// if (index == 0){
// Navigator.pushReplacementNamed(context, "/");
// }
// else if(index == 1){
// Navigator.pushNamed(context, "/setting");
// }
// else{
// Navigator.pushNamed(context, "/profile");
// }
// } ,
// ),
