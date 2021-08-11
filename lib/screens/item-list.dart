import 'package:flutter/material.dart';
import 'package:grocery/widgets/category-appbar.dart';
import 'package:grocery/widgets/item-grid.dart';

class ItemList extends StatelessWidget {
  static const routeNmae = "/-item-list";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: Column(
        children: [
          CategoryAppbar("Fruits"),
          Container(
            height: 560,
            child: GridView.builder(
              // padding: const EdgeInsets.all(10),
              itemBuilder: (ctx, i) => ItemGrid(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 8,
            ),
          )
        ],
      ),
    );
  }
}
