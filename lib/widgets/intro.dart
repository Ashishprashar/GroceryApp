import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      padding: EdgeInsets.only(top: 50, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "GreyZon.in",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adam Steve",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "adamsteve@gmail.com",
                        style: TextStyle(color: Colors.white.withOpacity(.7)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
