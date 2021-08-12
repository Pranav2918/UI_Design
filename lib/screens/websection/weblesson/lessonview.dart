import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/websection/weblesson/subjectcard.dart';

// ignore: must_be_immutable
class LessonSView extends StatelessWidget {
  double mainSize = 760;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 35.h,
                    width: 35.w,
                    child: Center(
                        child: Icon(Icons.person,
                            color: Colors.white, size: 22.sp)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                headingTitle(
                    'Lessons', 'Find your learning material', context, 18.sp),
                SizedBox(height: 50.h),
                searchBar(context),
                SizedBox(height: 25.h),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 35.w, right: 35.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/mathematik');
                        },
                        child: subjects(
                            Icon(Icons.calculate,
                                size: MediaQuery.of(context).size.width >
                                            mainSize &&
                                        MediaQuery.of(context).size.width <=
                                            1200
                                    ? 12
                                    : 18),
                            'Mathematik',
                            context,
                            mainSize),
                      ),
                      subjects(
                          Icon(
                              Icons.signal_wifi_connected_no_internet_4_rounded,
                              size: MediaQuery.of(context).size.width >
                                          mainSize &&
                                      MediaQuery.of(context).size.width <= 1200
                                  ? 12
                                  : 18),
                          'Networking',
                          context,
                          mainSize),
                      subjects(
                          Icon(Icons.elevator_sharp,
                              size: MediaQuery.of(context).size.width >
                                          mainSize &&
                                      MediaQuery.of(context).size.width <= 1200
                                  ? 12
                                  : 18),
                          'Biology',
                          context,
                          mainSize),
                      subjects(
                          Icon(Icons.vpn_key,
                              size: MediaQuery.of(context).size.width >
                                          mainSize &&
                                      MediaQuery.of(context).size.width <= 1200
                                  ? 12
                                  : 18),
                          'Security',
                          context,
                          mainSize),
                      subjects(
                          Icon(Icons.window_sharp,
                              size: MediaQuery.of(context).size.width >
                                          mainSize &&
                                      MediaQuery.of(context).size.width <= 1200
                                  ? 12
                                  : 18),
                          'Physic',
                          context,
                          mainSize),
                      SizedBox(
                          width: MediaQuery.of(context).size.width >=
                                      mainSize &&
                                  MediaQuery.of(context).size.width <= 1200
                              ? 10
                              : MediaQuery.of(context).size.width >= 1201 &&
                                      MediaQuery.of(context).size.width <= 1450
                                  ? 35
                                  : 45),
                      Icon(Icons.more_horiz,
                          color: Colors.grey[700],
                          size: MediaQuery.of(context).size.width > mainSize &&
                                  MediaQuery.of(context).size.width <= 1200
                              ? 12
                              : 18)
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 28.w, vertical: 10.h),
                    child: Text('Popular Topics',
                        style: TextStyle(
                            color: Colors.blueGrey[900],
                            fontSize: MediaQuery.of(context).size.width >
                                        mainSize &&
                                    MediaQuery.of(context).size.width <= 1200
                                ? 18
                                : 24,
                            fontWeight: FontWeight.w700))),
                SubjectCard()
              ],
            )));
  }

  Widget searchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.w, right: 25.w),
      height: 45.h,
      width: 700.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: Container(
              height: 45.h,
              width: 45.h,
              decoration: BoxDecoration(
                  color: Colors.blue[700], shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            contentPadding: EdgeInsets.only(left: 10.w, bottom: 10.h),
            border: InputBorder.none,
            hintText: 'Search over million lessons'),
      ),
    );
  }

  Widget subjects(Icon icon, String name, context, double size) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width >= size &&
                    MediaQuery.of(context).size.width <= 1200
                ? 10
                : MediaQuery.of(context).size.width >= 1201 &&
                        MediaQuery.of(context).size.width <= 1450
                    ? 35
                    : 45),
        child: Row(
          children: <Widget>[
            icon,
            SizedBox(width: 5.w),
            Text(name,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > size &&
                            MediaQuery.of(context).size.width <= 1200
                        ? 12
                        : 18))
          ],
        ),
      ),
    );
  }
}

Widget headingTitle(String title, String subtitle, context, double size) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(title,
        style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: MediaQuery.of(context).size.width > size &&
                    MediaQuery.of(context).size.width <= 1200
                ? 30
                : 40)),
    SizedBox(height: 10.h),
    Text(subtitle,
        style: TextStyle(
            color: Colors.grey,
            fontSize: MediaQuery.of(context).size.width > size &&
                    MediaQuery.of(context).size.width <= 1200
                ? 18
                : 28))
  ]);
}
