import 'package:flutter/material.dart';
import 'package:grocery/widgets/bottom-colum.dart';
import 'package:grocery/widgets/intro.dart';
import 'package:grocery/widgets/second-column.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Column(
            children: [
              IntroCard(),
              SecondColumn(),
            ],
          ),
          Positioned(bottom: 0, child: BottomColumn())
        ],
      ),
    );
  }
}
