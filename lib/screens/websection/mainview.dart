import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/websection/weblesson/lessonview.dart';
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
  bool isLesson = true;
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
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    child: demoButton(isLessonHovered, 'Lesson',
                                        context, mainSize, isLesson)),
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
                                        isPlatform)),
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
              ));
            }));
  }
}

Widget demoButton(
    bool val, String text, BuildContext context, double size, bool selected) {
  //For Hovering
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 35,
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

    //For Selecting
    child: Container(
      height: 35,
      width: MediaQuery.of(context).size.width >= size &&
              MediaQuery.of(context).size.width <= 1200
          ? 110
          : MediaQuery.of(context).size.width >= 1201 &&
                  MediaQuery.of(context).size.width <= 1450
              ? 110
              : 110,
      decoration: BoxDecoration(
        color: selected ? Colors.indigoAccent : Colors.transparent,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          Icon(Icons.window_sharp, color: Colors.white, size: 15),
          SizedBox(width: 6),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    ),
  );
}

Widget logoHeader(BuildContext context, double size) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 30.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.book,
            color: Colors.white,
            size: MediaQuery.of(context).size.width >= size &&
                    MediaQuery.of(context).size.width <= 1200
                ? 15
                : MediaQuery.of(context).size.width >= 1201 &&
                        MediaQuery.of(context).size.width <= 1450
                    ? 25
                    : 25),
        SizedBox(width: 5.w),
        Text('Learniverse',
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width >= size &&
                        MediaQuery.of(context).size.width <= 1200
                    ? 18
                    : MediaQuery.of(context).size.width >= 1201 &&
                            MediaQuery.of(context).size.width <= 1450
                        ? 20
                        : 25)),
      ],
    ),
  );
}
