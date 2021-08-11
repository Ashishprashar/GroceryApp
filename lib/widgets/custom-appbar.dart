import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey there",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      "let me help in your shopping",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                margin: EdgeInsets.only(left: 20, right: 20),

                // color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey.shade300),
                    hintText: "Search your daily needs anytime",
                  ),
                ),
              ),
              Positioned(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey.shade300,
                    )),
                left: 13,
              ),
              Positioned(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mic,
                      color: Colors.grey.shade300,
                    )),
                right: 13,
              )
            ],
          )
        ],
      ),
    );
  }
}
