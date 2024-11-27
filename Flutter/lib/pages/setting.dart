import 'package:first_app/normalText.dart';
import 'package:first_app/pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Setting() ));
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Column(
        children: [
          NormalText(data: "Setting Page"),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute( builder: (context) {return Profile();}
            ));
          }, child: Text("Profile"))
        ],
      ),
    );


  }
}
