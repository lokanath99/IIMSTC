import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String data;
  const NormalText({super.key , required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text( data,
          style: TextStyle(
          color: Colors.grey[800],
          letterSpacing: 12
      )
      ),
    );
  }
}
