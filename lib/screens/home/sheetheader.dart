import 'package:flutter/material.dart';

Widget stickyHeader(BuildContext context) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Learning Material',
            style: TextStyle(
                color: Colors.blueGrey[900],
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Which subject are you looking for?',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
      ],
    ),
    height: 70,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12))),
  );
}
