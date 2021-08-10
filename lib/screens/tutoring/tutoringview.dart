import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/screens/tutoring/inperson.dart';
import 'package:task_5/screens/tutoring/onlineteaching.dart';
import 'package:task_5/widgets/tutoringPopUp.dart';

class TutoringView extends StatefulWidget {
  @override
  _TutoringViewState createState() => _TutoringViewState();
}

class _TutoringViewState extends State<TutoringView> {
  double mainSize = 400;
  TextEditingController searchController = TextEditingController();
  bool selectedTab = false;
  String urlImage =
      "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsYXh5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            headerBackground(context, urlImage, mainSize),
            headerTitle(context, mainSize),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width < mainSize ? 180 : 225,
                left: 20,
                right: 20,
              ),
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
                          width: 90,
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
                                  color: selectedTab
                                      ? Colors.grey[800]
                                      : Colors.blue),
                              SizedBox(width: 5),
                              Text('Online',
                                  style: TextStyle(
                                      color: selectedTab
                                          ? Colors.grey[800]
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
                          width: 90,
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
                                  color: selectedTab
                                      ? Colors.blue
                                      : Colors.grey[800]),
                              SizedBox(width: 5),
                              Text('In Person',
                                  style: TextStyle(
                                      color: selectedTab
                                          ? Colors.blue
                                          : Colors.grey[800])),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12))),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) =>
                              popup(context, searchController),
                        );
                      },
                      icon: FaIcon(FontAwesomeIcons.filter,
                          size: 18, color: Colors.grey[800])),
                ],
              ),
            ),
            selectedTab
                ? inPersonTeachingCard(context, mainSize)
                : onlineTeachingCard(context, mainSize)
          ],
        ),
      ),
    );
  }
}

Widget headerBackground(BuildContext context, String img, double size) {
  return Container(
    height: (MediaQuery.of(context).size.width < size) ? 200 : 250,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
  );
}

Widget headerTitle(BuildContext context, double size) {
  return Container(
    margin: EdgeInsets.only(
        top: (MediaQuery.of(context).size.width < size) ? 100 : 150, left: 15),
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
