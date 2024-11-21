import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Hello World!!!"),
          backgroundColor: Colors.red[200],
          centerTitle: true),
      body: Row(
        children: [
          Text("Hello1"),
          Text("Hello"),
          Text("Hello2"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicked a floating action Button");
        },
        backgroundColor: Color(0xFF71C2FD),
        child: Text("Click Me"),
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Expanded(
// flex: 5,
// child: Container(
// color: Colors.lightGreenAccent,
// child: Text("Hello"),
// padding: EdgeInsets.all(10))),
// // Divider(
// //   height: 70,
// //   color: Colors.black45,
// // ),
// Expanded(
// flex: 3,
// child: Container(
// color: Colors.lightGreenAccent,
// padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// child: ElevatedButton.icon(
// onPressed: () {
// print("YOu clicked a button");
// },
// icon: Icon(Icons.mail),
// label: Text(""),
// style: TextButton.styleFrom(
// foregroundColor: Colors.green[900],
// backgroundColor: Colors.redAccent[200]),
// ),
// ),
// ),
// // SizedBox(
// //   height: 50,
// // ),
// Expanded(
// flex: 2,
// child: Container(
// color: Colors.lightGreenAccent,
// padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
// child: Text("hello !!")),
// )
// ],
// ),

// Padding(
// padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
// child: Text("Hello"),
// ),

// Container(
// padding:
// margin: EdgeInsetsDirectional.fromSTEB(10, 8, 5, 5),
// color: Colors.amberAccent,
// child: Text("This is a container"),
// ),

// IconButton(
// onPressed: () {print("Button clicked");},
// icon: Icon(Icons.mail),
// color: Colors.deepPurpleAccent,
// highlightColor: Colors.lightGreenAccent,
//
// )

// ElevatedButton.icon(
// onPressed: () {
// print("YOu clicked a button");
// },
// icon: Icon(Icons.mail),
// label: Text(""),
// style: TextButton.styleFrom(
// foregroundColor: Colors.green[900],
// backgroundColor: Colors.redAccent[200]
// ),
// )

// child: Icon(
// Icons.account_balance,
// color: Colors.lightGreenAccent,
// size: 50.0,

class FormattedText extends StatelessWidget {
  const FormattedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Have a Good Day!!",
      style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 4.0,
          color: Color(0xFF2E2E2E),
          fontFamily: "SourGummy"),
    );
  }
}
