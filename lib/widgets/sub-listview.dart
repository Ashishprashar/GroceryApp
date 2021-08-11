import 'package:flutter/material.dart';
import 'package:grocery/widgets/detail-tile.dart';

class SubListView extends StatefulWidget {
  var nn;
  SubListView(this.nn);
  List<String> images = [
    "https://en-media.thebetterindia.com/uploads/2016/11/ancient-grains-shutterstock_357428282-768x576.jpg",
    "https://scitechdaily.com/images/Fruits-and-Vegetables.jpg",
    "https://osiamart.com/image/cache/catalog/cold-drinks/Banner/DairyBakery-600x315.jpg",
    "https://i1.wp.com/www.eatthis.com/wp-content/uploads/2020/05/snacks-in-america.jpg?fit=1200%2C879&ssl=1",
    "https://bsmedia.business-standard.com/_media/bs/img/article/2019-01/01/full/1546320860-9359.png",
    "https://3.imimg.com/data3/SQ/QL/GLADMIN-9009197/images-foodstuffs-250x250.jpg",
    "https://www.unilever.com/Images/global-positive-beauty-ROW-FINAL_tcm244-559851_w400.jpg",
    "https://i2.wp.com/orissadiary.com/wp-content/uploads/2020/12/yvg71FTT.jpg?fit=680%2C383&ssl=1&resize=1280%2C720"
  ];
  List<String> names = [
    "Foodgrains,Oil & Masala",
    "Fruits & Vegetables",
    "Dairy & Bakery",
    "Snack Station",
    "Beverage Corner",
    "Instant Ready Food",
    "Beauty & Personal Care",
    "Home Hygiene & Care"
  ];
  List<String> veg = [
    "Fresh Fruits",
    "Fresh Vegitable",
    "Herbs & Seasoning",
    "Exotic Fruits & Vegetables"
  ];
  @override
  _SubListViewState createState() => _SubListViewState();
}

class _SubListViewState extends State<SubListView> {
  var expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Image.network(
              widget.images[widget.nn],
              fit: BoxFit.cover,
            ),
          ),
          title: Text(widget.names[widget.nn]),
          trailing: IconButton(
            icon: Icon(
              expanded ? Icons.expand_less : Icons.expand_more,
            ),
            onPressed: () {
              setState(() {
                expanded = !expanded;
              });
            },
          ),
        ),
        Divider(),
        Container(
          height: expanded ? 25.0 * widget.images.length : 0,
          color: Colors.white,
          child: ListView.builder(
              itemCount: widget.veg.length,
              itemBuilder: (ctx, i) {
                return DetailsTileView(widget.veg[i]);
              }),
        ),
      ],
    );
  }
}
