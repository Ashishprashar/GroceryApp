import 'package:flutter/material.dart';
import 'package:grocery/widgets/discount.dart';

class DiscountListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          DiscountCard(Colors.green.shade200),
          DiscountCard(Colors.amber.shade200),
        ],
      ),
    );
  }
}
