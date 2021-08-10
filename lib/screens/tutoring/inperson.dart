import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/data/tutoring/tutorlist.dart';
import 'package:task_5/screens/tutoring/teacherdetails.dart';

Widget inPersonTeachingCard(BuildContext context, double size) {
  return Container(
    margin: EdgeInsets.only(
        top: (MediaQuery.of(context).size.width <= size) ? 255 : 270,
        left: 15,
        right: 15),
    child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherDetails(index: index),
                    ));
              },
              child: Card(
                child: ListTile(
                  leading: leadingIcon(index),
                  title: listTileTitle(index),
                  subtitle: listTileSubTitle(index),
                  trailing: teachers[index]['subjectIcon'],
                ),
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
      teachers[index]['name'],
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
                teachers[index]['desc'],
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 15),
      Container(
        margin: EdgeInsets.only(left: 8, bottom: 8),
        child: Text(teachers[index]['class'],
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
                    image: NetworkImage(imgList[index]['img']),
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

final List imgList = [
  {
    'img':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
  {
    'img':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
  {
    'img':
        'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  },
];
