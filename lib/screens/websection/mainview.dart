import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/lesson/lessonview.dart';
import 'package:task_5/screens/tutoring/tutoring.dart';
import 'package:task_5/screens/websection/weblesson/lessonview.dart';
import 'package:task_5/screens/websection/weblesson/sidebar.dart';
import 'package:task_5/screens/websection/weblesson/tempClasses.dart';

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
  bool isLesson = false;
  bool isPlatform = false;
  bool isNav = false;
  bool isTutoring = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenUtilInit(
            designSize: Size(768, 1024),
            builder: () {
              return Container(
                  child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width >= mainSize &&
                            MediaQuery.of(context).size.width <= 1200
                        ? 180
                        : MediaQuery.of(context).size.width >= 1201 &&
                                MediaQuery.of(context).size.width <= 1450
                            ? 210
                            : 230,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 30.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.book,
                                        color: Colors.white, size: 20.sp),
                                    SizedBox(width: 5.w),
                                    Text('Learniverse',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.sp)),
                                  ],
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isLesson = true;
                                      isNav = false;
                                      isTutoring = false;
                                      isPlatform = false;
                                    });

                                    print('Lesson Clicked ' +
                                        isLesson.toString());
                                  },
                                  onHover: (val) {
                                    setState(() {
                                      isLessonHovered = val;
                                    });
                                  },
                                  child: demoButton(isLessonHovered, 'Lesson',
                                      context, mainSize)),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isPlatform = true;
                                      isNav = false;
                                      isLesson = false;
                                      isTutoring = false;
                                    });
                                    print('Platform Clicked ' +
                                        isPlatform.toString());
                                  },
                                  onHover: (val) {
                                    setState(() {
                                      isPlatformHovered = val;
                                    });
                                  },
                                  child: demoButton(isPlatformHovered,
                                      'Platform', context, mainSize)),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isNav = true;
                                      isPlatform = false;
                                      isTutoring = false;
                                      isLesson = false;
                                    });
                                    print('Nav Clicked ' + isNav.toString());
                                  },
                                  onHover: (val) {
                                    setState(() {
                                      isNavHovered = val;
                                    });
                                  },
                                  child: demoButton(
                                      isNavHovered, 'Nav', context, mainSize)),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isTutoring = true;
                                      isNav = false;
                                      isPlatform = false;
                                      isLesson = false;
                                    });
                                    print('Tutoring Clicked ' +
                                        isTutoring.toString());
                                  },
                                  onHover: (val) {
                                    setState(() {
                                      isTutoringHovered = val;
                                    });
                                  },
                                  child: demoButton(isTutoringHovered,
                                      'Tutoring', context, mainSize)),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                margin: EdgeInsets.only(bottom: 25.h),
                                height: 45.h,
                                width: 45.w,
                                child: Center(
                                  child: Icon(Icons.question_answer_outlined,
                                      color: Colors.white, size: 18.sp),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width >= mainSize &&
                            MediaQuery.of(context).size.width <= 1200
                        ? MediaQuery.of(context).size.width / 1.39
                        : MediaQuery.of(context).size.width >= 1201 &&
                                MediaQuery.of(context).size.width <= 1450
                            ? MediaQuery.of(context).size.width / 1.22
                            : MediaQuery.of(context).size.width / 1.20,
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
                  )
                ],
              ));
            }));
  }
}

Widget demoButton(bool val, String text, BuildContext context, double size) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 40.h,
    width: MediaQuery.of(context).size.width >= size &&
            MediaQuery.of(context).size.width <= 1200
        ? 110
        : MediaQuery.of(context).size.width >= 1201 &&
                MediaQuery.of(context).size.width <= 1450
            ? 110
            : 110,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: val ? Colors.indigoAccent : Colors.transparent),
    child: Container(
      width: MediaQuery.of(context).size.width >= size &&
              MediaQuery.of(context).size.width <= 1200
          ? 110
          : MediaQuery.of(context).size.width >= 1201 &&
                  MediaQuery.of(context).size.width <= 1450
              ? 110
              : 110,
      child: Row(
        children: [
          SizedBox(width: 3.w),
          Icon(Icons.window_sharp,
              color: val ? Colors.white : Colors.grey, size: 15),
          SizedBox(width: 5.w),
          Text(text, style: TextStyle(color: val ? Colors.white : Colors.grey)),
        ],
      ),
    ),
  );
}
