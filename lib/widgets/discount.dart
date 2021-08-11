import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  var color;
  DiscountCard(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width * .7,
        height: 100,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .7 * .7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "30% Discount",
                    style:
                        TextStyle(color: Colors.green.shade900, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Order any food from app and get instant discount",
                      maxLines: 2,
                      // overflow: ,
                      style:
                          TextStyle(color: Colors.green.shade700, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .7 * .3,
              padding: const EdgeInsets.only(right: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa73omWxE6ZDwizTNWqwwSt6NIyO6_PYiPfg&usqp=CAU",
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }
}
