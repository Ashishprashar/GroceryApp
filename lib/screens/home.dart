import 'package:flutter/material.dart';
import 'package:grocery/widgets/bottom-part.dart';
import 'package:grocery/widgets/custom-appbar.dart';
import 'package:grocery/widgets/custom-drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              child: CustomAppBar(),
              height: MediaQuery.of(context).size.height * 0.23,
              color: Colors.green,
              padding: EdgeInsets.only(top: 40),
            ),
            Container(
              child: BottomPart(),
              height: MediaQuery.of(context).size.height * 0.77,
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
