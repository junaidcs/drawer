import 'package:flutter/material.dart';

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
              CustomDrawerTile(),
              CustomDrawerTile(),
              CustomDrawerTile(),
              CustomDrawerTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.person),
              Text('Profile'),
            ],
          ),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
