import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/websection/weblesson/data/mathdetail.dart';
import 'package:task_5/screens/websection/weblesson/webwidgets.dart';

class SubjectDetailWeb extends StatefulWidget {
  @override
  _SubjectDetailWebState createState() => _SubjectDetailWebState();
}

class _SubjectDetailWebState extends State<SubjectDetailWeb> {
  final String imgUrl =
      'https://images.unsplash.com/photo-1513628253939-010e64ac66cd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3RhcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
//Hover Bool
  bool isLessonHovered = false;
  bool isPlatformHovered = false;
  bool isNavHovered = false;
  bool isTutoringHovered = false;
  double mainSize = 760;

  //Navigation Bool
  bool isLesson = true;
  bool isPlatform = false;
  bool isNav = false;
  bool isTutoring = false;
  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Row(
                children: [
                  Expanded(
                    child: Scaffold(
                      body: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imgUrl),
                                fit: BoxFit.cover)),
                        child: Container(
                            child: SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    logoHeader(context, mainSize),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isLesson = true;
                                            isNav = false;
                                            isTutoring = false;
                                            isPlatform = false;
                                          });
                                        },
                                        onHover: (val) {
                                          setState(() {
                                            isLessonHovered = val;
                                          });
                                        },
                                        child: demoButton(
                                            isLessonHovered,
                                            'Lesson',
                                            context,
                                            mainSize,
                                            isLesson)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isPlatform = true;
                                            isNav = false;
                                            isLesson = false;
                                            isTutoring = false;
                                          });
                                          Navigator.pushNamed(
                                              context, '/platform');
                                        },
                                        onHover: (val) {
                                          setState(() {
                                            isPlatformHovered = val;
                                          });
                                        },
                                        child: demoButton(
                                            isPlatformHovered,
                                            'Platform',
                                            context,
                                            mainSize,
                                            isPlatform)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isNav = true;
                                            isPlatform = false;
                                            isTutoring = false;
                                            isLesson = false;
                                          });
                                          Navigator.pushNamed(context, '/nav');
                                        },
                                        onHover: (val) {
                                          setState(() {
                                            isNavHovered = val;
                                          });
                                        },
                                        child: demoButton(isNavHovered, 'Nav',
                                            context, mainSize, isNav)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isTutoring = true;
                                            isNav = false;
                                            isPlatform = false;
                                            isLesson = false;
                                          });
                                          Navigator.pushNamed(
                                              context, '/tutoring');
                                        },
                                        onHover: (val) {
                                          setState(() {
                                            isTutoringHovered = val;
                                          });
                                        },
                                        child: demoButton(
                                            isTutoringHovered,
                                            'Tutoring',
                                            context,
                                            mainSize,
                                            isTutoring)),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      margin:
                                          EdgeInsets.only(bottom: 25, left: 25),
                                      height: 45,
                                      width: 45,
                                      child: Center(
                                        child: Icon(Icons.help_outline,
                                            color: Colors.white, size: 25),
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey),
                                      )),
                                )
                              ],
                            ),
                          ),
                        )),
                      ),
                    ),
                  ),
                  subjectDetail(context, mainSize)
                ],
              ),
            );
  }
}

Widget appbarField() {
  return Container(
    height: 40.sp,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(28.r)),
    child: TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.w, bottom: 10.h),
          border: InputBorder.none,
          hintText: 'Mathamatik',
          hintStyle: TextStyle(fontSize: 16.sp, color: Colors.blueGrey[900])),
    ),
  );
}

Widget detailTile() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: topics.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(top: 8.0.h),
        child: Card(
            elevation: 2.0,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      topics[index]['title'],
                      style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(topics[index]['site'],
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 8),
                    Text(
                      topics[index]['subtitle'],
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.arrow_upward,
                          color: Colors.blue, size: 18.sp),
                    )
                  ],
                ))),
      );
    },
  );
}
