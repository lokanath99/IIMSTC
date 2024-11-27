import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.cont,
  });

  final TextEditingController cont;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cont,

      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.deepOrangeAccent
              ),
              borderRadius: BorderRadius.all(Radius.circular(12.0))
          )
      ),

      onSubmitted: (value){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Submitted"),
            content: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("You Typed: $value"),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("OK"))
                  ],
                )
            ),
          );
        });
      },
    );
  }
}
