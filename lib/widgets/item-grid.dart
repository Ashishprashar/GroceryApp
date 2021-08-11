import 'package:flutter/material.dart';

class ItemGrid extends StatefulWidget {
  // var n;
  // ItemGrid(this.n);
  @override
  _ItemGridState createState() => _ItemGridState();
}

class _ItemGridState extends State<ItemGrid> {
  var count = 00;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 120,
                padding: EdgeInsets.only(left: 50),
                child: Image.network(
                  "https://i2.wp.com/ceklog.kindel.com/wp-content/uploads/2013/02/firefox_2018-07-10_07-50-11.png?fit=641%2C618&ssl=1",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple 1KG",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Rs.50 per piece"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Rs200",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ),
                      Container(
                        height: 25,
                        child: count == 0
                            ? GestureDetector(
                                onTap: () {
                                  count++;
                                  setState(() {});
                                },
                                child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                    )),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      count++;
                                      setState(() {});
                                    },
                                    child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                        )),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("$count")),
                                  GestureDetector(
                                    onTap: () {
                                      count--;
                                      setState(() {});
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                        Icons.remove,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ))
      ],
    );
  }
}
