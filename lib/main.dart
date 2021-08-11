import 'package:flutter/material.dart';
import 'package:grocery/screens/category-screen.dart';
import 'package:grocery/screens/item-list.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          primaryIconTheme: IconThemeData(color: Colors.white)),
      home: Home(),
      routes: {
        CategoryScreen.route: (ctx) => CategoryScreen(),
        ItemList.routeNmae: (ctx) => ItemList()
      },
    );
  }
}
