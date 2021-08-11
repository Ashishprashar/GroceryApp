import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery/widgets/category-item-main.dart';

class Category extends StatelessWidget {
  var category;
  Category(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border(),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  category,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                 Navigator.of(context).pushNamed(CategoryScreen.route);
                },
                child: Text(
                  "see all",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          Container(
            // margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.only(left: 8),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItemMain(
                    "https://ik.imagekit.io/dunzo/dunzo-catalog-prod/tr:n-\$R\$_store_thumbnail/stores/NlE3QitWTHVzazBxbHg1a0lDYjVmUT09-1609764354882-store_image.jpg",
                    "Foodgrains, Oils & Masalas"),
                CategoryItemMain(
                    "https://www.lalpathlabs.com/blog/wp-content/uploads/2019/01/Fruits-and-Vegetables.jpg",
                    "Fruits and vegitable"),
                CategoryItemMain(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5aDx5qsI7y1wKSsokngj3DHNeGLNk9EHdFQ&usqp=CAU",
                    "Bakery"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
