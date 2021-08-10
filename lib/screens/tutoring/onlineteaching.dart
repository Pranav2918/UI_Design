import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/data/tutoring/onlineteacher.dart';

Widget onlineTeachingCard(BuildContext context, double size) {
  return Container(
    margin: EdgeInsets.only(
        top: (MediaQuery.of(context).size.width < size) ? 255 : 270,
        left: 15,
        right: 15),
    child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: onlineTeachers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Card(
              child: ListTile(
                leading: leadingIcon(index),
                title: listTileTitle(index),
                subtitle: listTileSubTitle(index),
                trailing: onlineTeachers[index]['subjectIcon'],
              ),
            ),
          );
        }),
  );
}

Widget listTileTitle(int index) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    child: Text(
      onlineTeachers[index]['name'],
      style: TextStyle(
          color: Colors.blueGrey[900],
          fontWeight: FontWeight.bold,
          fontSize: 18),
    ),
  );
}

Widget listTileSubTitle(int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FaIcon(FontAwesomeIcons.checkCircle, size: 15),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                onlineTeachers[index]['desc'],
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 15),
      Container(
        margin: EdgeInsets.only(left: 2, bottom: 8),
        child: Text(onlineTeachers[index]['class'],
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ),
    ],
  );
}

Widget leadingIcon(int index) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.black,
    ),
    height: 65,
    width: 65,
    child: Stack(
      children: [
        Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(teacherImage[index]['img']),
                    fit: BoxFit.cover))),
        Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.purple.withOpacity(0.4)))
      ],
    ),
  );
}

final List teacherImage = [
  {
    'img':
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
  {
    'img':
        'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
  {
    'img':
        'https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
  {
    'img':
        'https://images.unsplash.com/photo-1450297350677-623de575f31c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  }
];
