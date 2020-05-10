import 'package:flutter/material.dart';

import 'package:drawer/widgets/custom_drawer_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/lego.jpg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Logo Carlos',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              CustomDrawerTile(Icons.person, 'Profile', Icons.arrow_right),
              CustomDrawerTile(Icons.settings, 'Settings', Icons.arrow_right),
              CustomDrawerTile(
                  Icons.notifications, 'Notifications', Icons.arrow_right),
              CustomDrawerTile(Icons.lock, 'Logout', Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}
