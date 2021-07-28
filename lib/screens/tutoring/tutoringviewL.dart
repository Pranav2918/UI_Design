import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/screens/tutoring/inperson.dart';
import 'package:task_5/screens/tutoring/onlineteaching.dart';
import 'package:task_5/widgets/navbar.dart';

class TutoringViewL extends StatefulWidget {
  @override
  _TutoringViewLState createState() => _TutoringViewLState();
}

class _TutoringViewLState extends State<TutoringViewL> {
  bool selectedTab = false;
  String urlImage =
      "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsYXh5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            headerBackground(context, urlImage),
            headerTitle(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.only(top: 230, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          if (selectedTab == false) {
                            setState(() {
                              selectedTab = true;
                            });
                          } else {
                            setState(() {
                              selectedTab = false;
                            });
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2,
                                      color: selectedTab
                                          ? Colors.white
                                          : Colors.blue))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.video_call,
                                  color:
                                      selectedTab ? Colors.grey : Colors.blue),
                              SizedBox(width: 5),
                              Text('Online',
                                  style: TextStyle(
                                      color: selectedTab
                                          ? Colors.grey
                                          : Colors.blue)),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (selectedTab == true) {
                            setState(() {
                              selectedTab = false;
                            });
                          } else {
                            setState(() {
                              selectedTab = true;
                            });
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2,
                                      color: selectedTab
                                          ? Colors.blue
                                          : Colors.white))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person,
                                  color:
                                      selectedTab ? Colors.blue : Colors.grey),
                              SizedBox(width: 5),
                              Text('In Person',
                                  style: TextStyle(
                                      color: selectedTab
                                          ? Colors.blue
                                          : Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              Container(height: 200, color: Colors.black),
                        );
                      },
                      icon: FaIcon(FontAwesomeIcons.filter, size: 19))
                ],
              ),
            ),
            selectedTab ? inPersonTeachingCard() : onlineTeachingCard()
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

Widget headerBackground(BuildContext context, String img) {
  return Container(
    height: 250,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
  );
}

Widget headerTitle() {
  return Container(
    margin: EdgeInsets.only(top: 150, left: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tutoring',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        Text(
          'Find tutoring from the best providers',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
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
