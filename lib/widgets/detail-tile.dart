import 'package:flutter/material.dart';
import 'package:grocery/screens/item-list.dart';

class DetailsTileView extends StatefulWidget {
  var n;
  DetailsTileView(this.n);

  @override
  _DetailsTileViewState createState() => _DetailsTileViewState();
}

class _DetailsTileViewState extends State<DetailsTileView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ItemList.routeNmae);
      },
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.n),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ItemList.routeNmae);
                },
                icon: Icon(Icons.arrow_right))
          ],
        ),
      ),
    );
  }
}
