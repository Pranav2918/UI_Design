import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/screens/lesson/homepage.dart';
import 'package:task_5/screens/tutoring/tutoring.dart';
import 'package:task_5/screens/websection/mainview.dart';
import 'package:task_5/screens/websection/weblesson/subjectdetails.dart';

import 'screens/platforms/platform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 846),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(accentColor: Colors.blue),
        routes: {
          '/': (BuildContext context) => MainPage(),
          '/lesson': (BuildContext context) => MainScreenView(),
          '/mathematik': (BuildContext context) => SubjectDetailWeb()
        },
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 480) {
        return CupertinoTabScaffold(
          resizeToAvoidBottomInset: false,
          tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.graduationCap), label: 'Lessons'),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_carousel_rounded), label: 'Platform'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Nav'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined), label: 'Tutoring')
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: HomePage());
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: Platforms());
                });
              case 2:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: Extra());
                });
              case 3:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: Tutoring());
                });
              default:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: HomePage());
                });
            }
          },
        );
      } else if (constraints.maxWidth >= 480 && constraints.maxWidth <= 1600) {
        return MainScreenView();
      } else {
        return MainScreenView();
      }
    });
  }
}

class Extra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Design Come Soon',
              style: TextStyle(color: Colors.black, fontSize: 28.sp))),
    );
  }
}
