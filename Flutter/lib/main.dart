import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> quotes = [
    'Growth begins at the edge of your comfort zone—step out and make today extraordinary.',
    'Every small step forward is progress—keep moving, and you\'ll reach greatness.',
    'The future belongs to those who embrace the challenges of today with courage and hope.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Quotes"),
          backgroundColor: Colors.red[200],
          centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: quotes.map((ele){
              return Container(
                child: Card(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                   ListTile(
                leading: Icon(Icons.album),
                title: Text('$ele'),
                    ),
                  ]
                )
              )
              );
            }).toList(),
      

        ),
      ),
    );
  }
}


