import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:my_app/model/todo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> todo_list = [];
  TextEditingController titleController = TextEditingController();

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
      ),
      // drawer: MyNavBars(context: context),
      floatingActionButton:
          FloatingActionButton(onPressed: () async{
            return showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Insert New Todo'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        TextField(controller: titleController,
                        )
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Add'),
                      onPressed: () {
                        _postData(titleController.text);
                        titleController.clear();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
            }
          ,child: Icon(Icons.add)),

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.settings), label: "setting"),
          NavigationDestination(icon: Icon(Icons.person), label: "Person")
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

      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: todo_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 180,
            color: Colors.amber,
            padding: EdgeInsets.all(20.0),
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Checkbox(
                          value: todo_list[index].completed,
                          onChanged: (value) {
                            setState(() {
                              todo_list[index].completed = value!;
                            });
                          }),
                      title: Text("UserId: ${todo_list[index].userId}"),
                      subtitle: Text("Todo: \n ${todo_list[index].title}"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            todo_list.remove(todo_list[index]);
                          });
                        },
                        icon: Icon(Icons.delete),
                        label: Text("Delete"),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

  void _postData(data) async {
    var uri = Uri.http('192.168.0.12:3000', '/todos/');
    var response = await http.post(Uri.parse("http://192.168.0.12:3000/todos/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: convert.jsonEncode(<String, String>{"title": data, "completed":"false"}));
    if (response.statusCode == 200) {
      getData();
    }
  }

  getData() async {
    todo_list = [];
    var uri = Uri.http('192.168.0.12:3000', '/todos/');
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body) as List<dynamic>;
      print(data);
      data.forEach((todos) {
        var todo = todos as Map<String, dynamic>;
        todo_list += [
          Todo(
              title: todo["title"],
              completed: todo["completed"],
              userId: todo["userID"])
        ];
      });
    }
    setState(() {
      todo_list = todo_list;
    });
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
