import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Class Counter."),
          backgroundColor: Colors.blueAccent),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("Assets/AssetImage-1.jpg"),
            const Text(
              "Class Name:",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  fontFamily: "SourGummy",
                  letterSpacing: 2.0),
            ),
            const Text(
              "IIMSTC Flutter Dev",
              style: TextStyle(
                  fontSize: 16, fontFamily: "SourGummy", letterSpacing: 2.0),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Classes Conducted:",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  fontFamily: "SourGummy",
                  letterSpacing: 2.0),
            ),
            Text(
              '$counter',
              style: TextStyle(
                  fontSize: 20, fontFamily: "SourGummy", letterSpacing: 2.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.video_call,
                  color: Colors.indigo[800],
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "vje-dtac-cgf?authuser=0",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SourGummy",
                      letterSpacing: 2.0),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counter++;
        });


        },
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

