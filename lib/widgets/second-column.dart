import 'package:flutter/material.dart';
import 'package:grocery/screens/category-screen.dart';
import 'package:grocery/widgets/drawericon.dart';

class SecondColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerIcon(Icons.home, "Home"),
        DrawerIcon(Icons.account_circle, "Profile"),
        GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(CategoryScreen.route);
            },
            child: DrawerIcon(Icons.category_rounded, "Category")),
        DrawerIcon(Icons.history, "Orders"),
        DrawerIcon(Icons.favorite_border, "Wishlist"),
        DrawerIcon(Icons.location_pin, "My Delevery Address"),
        DrawerIcon(Icons.payment, "My Payment"),
      ],
    );
  }
}
