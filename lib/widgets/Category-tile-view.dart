import 'package:flutter/material.dart';
import 'package:grocery/widgets/sub-listview.dart';

class CategoryTileView extends StatefulWidget {
  var image, title, subtitle;
  CategoryTileView(this.image, this.title, this.subtitle);
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
  @override
  _CategoryTileViewState createState() => _CategoryTileViewState();
}

class _CategoryTileViewState extends State<CategoryTileView> {
  var expanded = false;
  // var expanded1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.white,
          leading: Image.network(widget.image),
          title: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12),
          ),
          trailing: IconButton(
            icon: expanded ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
            onPressed: () {
              setState(() {
                expanded = !expanded;
              });
            },
          ),
        ),
        Container(
          height: expanded ? 75.0 * widget.images.length : 0,
          child: ListView.builder(
              itemCount: widget.images.length,
              itemBuilder: (ctx, i) {
                return SubListView(i);
              }),
        ),
      ],
    );
  }
}
