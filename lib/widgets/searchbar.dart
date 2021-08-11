import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
