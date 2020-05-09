import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final IconData rightIcon;

  CustomDrawerTile(this.icon, this.title, this.rightIcon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
      child: InkWell(
        onTap: () => {},
        splashColor: Colors.deepOrangeAccent,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Icon(rightIcon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
