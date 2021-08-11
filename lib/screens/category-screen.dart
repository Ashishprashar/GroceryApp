import 'package:flutter/material.dart';
import 'package:grocery/widgets/Category-tile-view.dart';
import 'package:grocery/widgets/category-appbar.dart';
import 'package:grocery/widgets/searchbar.dart';

class CategoryScreen extends StatefulWidget {
  static const route = "/-categoryscreen";
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
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var expanded = false;
  var expanded1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: CategoryAppbar("Category")),
              Positioned.fill(
                top: 120,
                child: SearchBar(),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              expanded = !expanded;
              setState(() {});
            },
            child: Column(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                CategoryTileView(
                    "https://image.flaticon.com/icons/png/512/135/135763.png",
                    "Groceries",
                    "Fruits,Vegitable,Dairy & Health Care products"),
                SizedBox(
                  height: 10,
                ),
                CategoryTileView(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Go-home-2.svg/1024px-Go-home-2.svg.png",
                    "Home & Kitchen",
                    "Pooja Material,Disposal ,Electrical and vfsdf"),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
