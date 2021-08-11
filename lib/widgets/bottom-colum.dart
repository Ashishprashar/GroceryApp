import 'package:flutter/material.dart';
import 'package:grocery/widgets/drawericon.dart';

class BottomColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 20, top: 12),
            child: Text(
              "Support",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          DrawerIcon(Icons.shield_sharp, "Terms & Conditions"),
          DrawerIcon(Icons.call, "contact us"),
          Divider(),
          DrawerIcon(Icons.logout, "Log Out")
        ],
      ),
    );
  }
}
