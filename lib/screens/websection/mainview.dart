import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/websection/weblesson/lessonview.dart';
import 'package:task_5/screens/websection/weblesson/tempClasses.dart';
import 'package:task_5/screens/websection/weblesson/webwidgets.dart';

class MainScreenView extends StatefulWidget {
  @override
  _MainScreenViewState createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
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

  bool isClosed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
                  child: Row(
                children: [
                  isClosed
                      ? Container(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClosed = !isClosed;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 25, left: 25),
                                  height: 45,
                                  width: 45,
                                  child: Center(
                                    child: Icon(
                                      isClosed
                                          ? Icons.arrow_forward_ios
                                          : Icons.close,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  )),
                            ),
                          ),
                          width: 100,
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height,
                        )
                      : Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(imgUrl),
                                    fit: BoxFit.cover)),
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                            isLesson,
                                          )),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              isPlatform = true;
                                              isNav = false;
                                              isLesson = false;
                                              isTutoring = false;
                                            });
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
                                            isPlatform,
                                          )),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              isNav = true;
                                              isPlatform = false;
                                              isTutoring = false;
                                              isLesson = false;
                                            });
                                          },
                                          onHover: (val) {
                                            setState(() {
                                              isNavHovered = val;
                                            });
                                          },
                                          child: demoButton(
                                            isNavHovered,
                                            'Nav',
                                            context,
                                            mainSize,
                                            isNav,
                                          )),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              isTutoring = true;
                                              isNav = false;
                                              isPlatform = false;
                                              isLesson = false;
                                            });
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
                                            isTutoring,
                                          )),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isClosed = !isClosed;
                                        });
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              bottom: 25, right: 25),
                                          height: 45,
                                          width: 45,
                                          child: Center(
                                            child: Icon(
                                                isClosed
                                                    ? Icons.arrow_forward_ios
                                                    : Icons.close,
                                                color: Colors.white,
                                                size: 15),
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.grey),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  Expanded(
                    flex: MediaQuery.of(context).size.width > mainSize &&
                            MediaQuery.of(context).size.width <= 1200
                        ? 4
                        : MediaQuery.of(context).size.width <= 768
                            ? 3
                            : 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Container(
                          child: isLesson
                              ? LessonSView()
                              : isPlatform
                                  ? PlatformWeb()
                                  : isNav
                                      ? Nav()
                                      : isTutoring
                                          ? Tut()
                                          : LessonSView()),
                    ),
                  )
                ],
              ))
           );
  }
}
