import 'package:flutter/material.dart';

class CategoryItemMain extends StatelessWidget {
  var link;
  var title;
  CategoryItemMain(this.link, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green.shade300),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            link,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            width: 100,
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              // style: TextStyle(overflow: TextOverflow.ellipsis),
            ))
      ]),
    );
  }
}
