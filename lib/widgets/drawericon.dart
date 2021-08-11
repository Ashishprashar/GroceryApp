import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  var icon;
  var title;
  DrawerIcon(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 12),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.green.shade900,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.green.shade900, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
