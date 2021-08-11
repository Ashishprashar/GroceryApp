import 'package:flutter/material.dart';
import 'package:grocery/widgets/category.dart';
import 'package:grocery/widgets/discount-list-view.dart';
import 'package:grocery/widgets/discount.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white12,
      decoration: BoxDecoration(
        color: Colors.grey.shade50.withOpacity(.9),
        border: Border(),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Category("Categories"),
            DiscountListView(),
            Category("Best Deals"),
            DiscountListView(),
          ],
        ),
      ),
    );
  }
}
