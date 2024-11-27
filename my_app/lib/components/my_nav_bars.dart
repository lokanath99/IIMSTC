import 'package:flutter/material.dart';

class MyNavBars extends StatelessWidget {
  final context;
  const MyNavBars({super.key, required this.context});

  void _routeToSetting(){
    Navigator.pop(context);
    Navigator.pushNamed(context, "/setting");
  }
  void _routeToHome() {
    Navigator.pop(context);
    Navigator.pushNamed(context, "/");
  }
  void _routToProfile() {
    Navigator.pop(context);
    Navigator.pushNamed(context, "/profile");}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurpleAccent,
      child: Column(
        children: [
          DrawerHeader(child: Center(child: Text("Menu"))),
          ListTile(
            title: Text("Home"),
            onTap: _routeToHome,
          ),

          ListTile(
            title: Text("Profile"),
            onTap: _routToProfile,
          ),
          ListTile(
            title: Text("Setting"),
            onTap: _routeToSetting,
          ),
        ],
      ),
    );
  }
}
