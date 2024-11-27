import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/profile_page.dart';
import 'package:my_app/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),//fist root dir/ root page
      routes: {
        '/setting': (context) => Setting(),
        '/profile': (context) => Profile()
      },
    );
  }
}
