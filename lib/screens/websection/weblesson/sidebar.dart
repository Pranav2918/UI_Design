// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SidebarWidget extends StatefulWidget {
//   @override
//   _SidebarWidgetState createState() => _SidebarWidgetState();
// }

// class _SidebarWidgetState extends State<SidebarWidget> {
//   //HoverProperty
 

//   //Navigaton Bools
//   bool isLesson = false;
//   bool isPlatform = false;
//   bool isNav = false;
//   bool isTutoring = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width >= mainSize &&
//               MediaQuery.of(context).size.width <= 1200
//           ? 180
//           : MediaQuery.of(context).size.width >= 1201 &&
//                   MediaQuery.of(context).size.width <= 1450
//               ? 220
//               : 250,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//         Colors.purple,
//         Colors.deepPurple,
//         Colors.blue,
//         Colors.blueAccent
//       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
//       child: Container(
//         child: Column(
//           children: [
//             SizedBox(height: 50.h),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 30.h),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.book, color: Colors.white, size: 18.sp),
//                   SizedBox(width: 5.w),
//                   Text('Learniverse',
//                       style: TextStyle(color: Colors.white, fontSize: 18)),
//                 ],
//               ),
//             ),
//             InkWell(
//                 onTap: () {
//                   setState(() {
//                     isLesson = true;
//                     isNav = false;
//                     isTutoring = false;
//                     isPlatform = false;
//                   });

//                   print('Lesson Clicked ' + isLesson.toString());
//                 },
//                 onHover: (val) {
//                   setState(() {
//                     isLessonHovered = val;
//                   });
//                 },
//                 child: demoButton(isLessonHovered, 'Lesson')),
//             InkWell(
//                 onTap: () {
//                   setState(() {
//                     isPlatform = true;
//                     isNav = false;
//                     isLesson = false;
//                     isTutoring = false;
//                   });
//                   print('Platform Clicked ' + isPlatform.toString());
//                 },
//                 onHover: (val) {
//                   setState(() {
//                     isPlatformHovered = val;
//                   });
//                 },
//                 child: demoButton(isPlatformHovered, 'Platform')),
//             InkWell(
//                 onTap: () {
//                   setState(() {
//                     isNav = true;
//                     isPlatform = false;
//                     isTutoring = false;
//                     isLesson = false;
//                   });
//                   print('Nav Clicked ' + isNav.toString());
//                 },
//                 onHover: (val) {
//                   setState(() {
//                     isNavHovered = val;
//                   });
//                 },
//                 child: demoButton(isNavHovered, 'Nav')),
//             InkWell(
//                 onTap: () {
//                   setState(() {
//                     isTutoring = true;
//                     isNav = false;
//                     isPlatform = false;
//                     isLesson = false;
//                   });
//                   print('Tutoring Clicked ' + isTutoring.toString());
//                 },
//                 onHover: (val) {
//                   setState(() {
//                     isTutoringHovered = val;
//                   });
//                 },
//                 child: demoButton(isTutoringHovered, 'Tutoring')),
//           ],
//         ),
//       ),
//     );
//   }
// }


// }
