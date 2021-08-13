import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Heading Title for Lesson Page
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

//Subject Row

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

//Lesson searchBar

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
            decoration:
                BoxDecoration(color: Colors.blue[700], shape: BoxShape.circle),
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

//Sidebar DemoButton

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

//Sidebar Logo
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
