import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/data/tutoring/tutorlist.dart';
import 'package:task_5/screens/tutoring/inperson.dart';
import 'package:task_5/widgets/navbar.dart';

class TeacherDetails extends StatelessWidget {
  final int index;
  num mainSize = 780.0;
  TeacherDetails({
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.close, size: 25, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                profileImage(index),
                titleInfo(index),
                detailSection(context),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 30, left: 25, right: 25),
                  child: Text(teachers[index]['detailDesc'],
                      style: TextStyle(fontSize: 16)),
                ),
                subject(index),
                tutoringLanguage(index),
                location(index),
                availability(),
                fees(index),
                platform()
              ]),
        ),
        floatingActionButton: floatingButton(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: NavBar());
  }
}

Widget profileImage(int index) {
  return Align(
    alignment: Alignment.topRight,
    child: Container(
      margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      height: 95,
      width: 95,
      child: Stack(
        children: [
          Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(imgList[index]['img']),
                      fit: BoxFit.cover))),
          Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.withOpacity(0.4)))
        ],
      ),
    ),
  );
}

Widget titleInfo(int index) {
  return Container(
    margin: EdgeInsets.only(top: 10, right: 25, left: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          teachers[index]['name'],
          style: TextStyle(color: Colors.blueGrey[900], fontSize: 26),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(FontAwesomeIcons.checkCircle, size: 16),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  teachers[index]['desc'],
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget detailSection(BuildContext context) {
  return Container(
    height: 50,
    margin: EdgeInsets.only(left: 45, right: 35, top: 45),
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.language, size: 19),
            SizedBox(height: 10),
            Text('English', style: TextStyle(fontSize: 14))
          ],
        ),
        divider(),
        Container(
            width: 70,
            margin: EdgeInsets.only(left: 35),
            child: Text('Online & Person', style: TextStyle(fontSize: 15))),
        divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '1 - 3',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 10),
            Text('English', style: TextStyle(fontSize: 14))
          ],
        ),
      ],
    ),
  );
}

Widget divider() {
  return Container(
    margin: EdgeInsets.only(left: 15),
    width: 1,
    color: Colors.grey.withOpacity(0.4),
    height: 50,
  );
}

Widget subject(int index) {
  return Container(
    margin: EdgeInsets.only(left: 25, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Subject', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 22),
        Row(
          children: [
            teachers[index]['subjectIcon'],
            SizedBox(width: 10),
            Text(teachers[index]['subject'])
          ],
        )
      ],
    ),
  );
}

Widget tutoringLanguage(int index) {
  return Container(
    margin: EdgeInsets.only(left: 25, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Tutoring Language', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        Text(
          teachers[index]['tutoringLanguage'],
          style: TextStyle(color: Colors.black, fontSize: 14),
        )
      ],
    ),
  );
}

Widget location(int index) {
  return Container(
    margin: EdgeInsets.only(left: 25, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Location', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        Text(
          teachers[index]['location'],
          style: TextStyle(color: Colors.black, fontSize: 14),
        )
      ],
    ),
  );
}

Widget availability() {
  return Container(
    margin: EdgeInsets.only(left: 25, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Availability', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        Text(
          'Check details here',
          style: TextStyle(
              color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget fees(int index) {
  return Container(
    margin: EdgeInsets.only(left: 25, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Fee', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        Text(
          teachers[index]['fee'],
          style: TextStyle(color: Colors.black, fontSize: 14),
        )
      ],
    ),
  );
}

Widget platform() {
  return Container(
    margin: EdgeInsets.only(left: 25, top: 25, bottom: 75),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Platform', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        Text(
          'www.tutoria.de',
          style: TextStyle(
              color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget floatingButton(BuildContext context) {
  return RawMaterialButton(
    onPressed: () {},
    child: Container(
        margin: EdgeInsets.only(left: 35, right: 35),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ], borderRadius: BorderRadius.circular(28), color: Colors.blue[700]),
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contact tutor',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward, color: Colors.white, size: 22),
          ],
        )),
  );
}
