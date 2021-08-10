import 'package:flutter/material.dart';

Widget searchBar(context) {
  return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(28)),
      child: Row(children: [
        Container(
          child: Icon(
            Icons.search,
            color: Colors.grey,
            size: 25,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10,top: 6),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search for terms like 'Geometry'",
                  border: InputBorder.none),
            ),
          ),
        )
      ]));
}
