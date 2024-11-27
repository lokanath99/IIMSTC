import 'package:first_app/normalText.dart';
import 'package:first_app/pages/setting.dart';
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
        title: Text("Home"),
      ),
      body:  Column(
        children: [
          NormalText(data: "Home"),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute( builder: (context) {return Setting();})
            );
          }, child: Text("Settings"))
        ],
      ),
    );
  }
}






// class Home extends StatefulWidget {
//   const Home({super.key});
//
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   List<String> quotes = [
//     'Growth begins at the edge of your comfort zone—step out and make today extraordinary.',
//     'Every small step forward is progress—keep moving, and you\'ll reach greatness.',
//     'The future belongs to those who embrace the challenges of today with courage and hope.'
//   ];
//
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text("Quotes"),
//             backgroundColor: Colors.red[200],
//             centerTitle: true),
//         body:
//
//     );
//   }
// }


// GestureDetector(
// onTap: (){
// setState(() {
// counter++;
// });
// },
// // onDoubleTap: (){
// //   print("Dounble tapped the widget!!");
// // },
// child: Center(
// child: Container(
// color: Colors.cyan[200],
// padding: EdgeInsets.all(50),
// child: Text('Tapped: $counter Times!!'),
// ),
// ),
// )



// GridView.builder(
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
// itemCount: 20,
// itemBuilder: (BuildContext context, int index){
// return Card(
// color: Colors.amber,
// child: Center(child: Text('$index')),
// );
//
// })



// ListView.builder(
// padding: EdgeInsets.all(10),
// itemCount: quotes.length,
// itemBuilder: (BuildContext context, int index) {
// return Card(
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: <Widget>[
// ListTile(
// leading: Icon(Icons.album),
// title: Text(quotes[index]),
// )
// ],
// ),
// );
// },
// )



// quotes.map((ele){
// return Container(
// child: Card(
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: <Widget>[
// ListTile(
// leading: Icon(Icons.album),
// title: Text('$ele'),
// ),
// ]
// )
// )
// );
// }).toList(),
