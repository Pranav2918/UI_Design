import 'package:flutter/material.dart';
import 'package:task_5/screens/lesson/sheetcards.dart';

Widget bottomSheet(context) {
  return Container(
    child: SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(height: 8),
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
            padding: const EdgeInsets.only(left: 8, top: 35),
            child: Text(
              'Which subject are you looking for?',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: BottomSheetData(),
          ),
          SizedBox(height: 5),
        ],
      ),
    ),
  );
}
