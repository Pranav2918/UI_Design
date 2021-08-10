import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LessonSView extends StatelessWidget {
  double mainSize = 760;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.blue[700], shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.person, color: Colors.white, size: 18.sp),
              ),
            ),
          ),
          headingTitle('Lessons', 'Search for learning material'),
          SizedBox(height: 50.h),
          searchBar(context),
          SizedBox(height: 20.h),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 35.w, right: 35.w),
            child: Row(
              children: [
                subjects(
                    Icon(Icons.calculate,
                        size: MediaQuery.of(context).size.width > mainSize &&
                                MediaQuery.of(context).size.width <= 1200
                            ? 12
                            : 18),
                    'Mathematik',
                    context,
                    mainSize),
                subjects(
                    Icon(Icons.signal_wifi_connected_no_internet_4_rounded,
                        size: MediaQuery.of(context).size.width > mainSize &&
                                MediaQuery.of(context).size.width <= 1200
                            ? 12
                            : 18),
                    'Networking',
                    context,
                    mainSize),
                subjects(
                    Icon(Icons.elevator_sharp,
                        size: MediaQuery.of(context).size.width > mainSize &&
                                MediaQuery.of(context).size.width <= 1200
                            ? 12
                            : 18),
                    'Biology',
                    context,
                    mainSize),
                subjects(
                    Icon(Icons.vpn_key,
                        size: MediaQuery.of(context).size.width > mainSize &&
                                MediaQuery.of(context).size.width <= 1200
                            ? 12
                            : 18),
                    'Security',
                    context,
                    mainSize),
                subjects(
                    Icon(Icons.window_sharp,
                        size: MediaQuery.of(context).size.width > mainSize &&
                                MediaQuery.of(context).size.width <= 1200
                            ? 12
                            : 18),
                    'Physic',
                    context,
                    mainSize),
                SizedBox(
                    width: MediaQuery.of(context).size.width >= mainSize &&
                            MediaQuery.of(context).size.width <= 1200
                        ? 20
                        : MediaQuery.of(context).size.width >= 1201 &&
                                MediaQuery.of(context).size.width <= 1450
                            ? 35
                            : 55),
                Icon(Icons.more_horiz, color: Colors.grey[700], size: 18.sp)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget headingTitle(String title, String subtitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,
          style: TextStyle(color: Colors.blueGrey[900], fontSize: 30.sp)),
      SizedBox(height: 10.h),
      Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 18.sp))
    ],
  );
}

Widget searchBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 25.w, right: 25.w),
    height: 50.h,
    width: 800.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28.r),
      color: Colors.white,
    ),
    child: Stack(
      children: [
        TextFormField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w),
              border: InputBorder.none,
              hintText: 'Search over million lessons'),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[700],
                ),
                child: Center(
                  child: Icon(Icons.search, color: Colors.white, size: 22.sp),
                )))
      ],
    ),
  );
}

Widget subjects(Icon icon, String name, context, double size) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width >= size &&
                MediaQuery.of(context).size.width <= 1200
            ? 20
            : MediaQuery.of(context).size.width >= 1201 &&
                    MediaQuery.of(context).size.width <= 1450
                ? 35
                : 55),
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
  );
}
