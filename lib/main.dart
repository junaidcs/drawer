import 'package:flutter/material.dart';

import 'package:drawer/widgets/custom_drawer_tile.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Application'),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.deepOrange, Colors.orangeAccent],
                  ),
                ),
                child: Text('Some header'),
              ),
              CustomDrawerTile(Icons.person, 'Profile', Icons.arrow_right),
              CustomDrawerTile(Icons.settings, 'Settings', Icons.arrow_right),
              CustomDrawerTile(Icons.notifications, 'Notifications', Icons.arrow_right),
              CustomDrawerTile(Icons.lock, 'Logout', Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}