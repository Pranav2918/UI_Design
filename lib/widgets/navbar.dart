import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/screens/lesson/homepage.dart';
import 'package:task_5/screens/platforms/platform.dart';
import 'package:task_5/screens/tutoring/tutoring.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        labelColor: Colors.blue,
        indicator:
            UnderlineTabIndicator(borderSide: BorderSide(color: Colors.white)),
        unselectedLabelColor: Colors.grey,
        tabs: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Tab(
              icon: FaIcon(FontAwesomeIcons.graduationCap),
              text: 'Lessons',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Platforms()));
            },
            child: Tab(
              icon: Icon(Icons.view_carousel_rounded),
              text: 'Platforms',
            ),
          ),
          Tab(
            icon: Icon(Icons.book),
            text: 'Lessons',
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Tutoring()));
            },
            child: Tab(
              icon: Icon(Icons.people_alt_outlined),
              text: 'Tutoring',
            ),
          )
        ],
        onTap: _onItemTapped,
        controller: _tabController,
      ),
    );
  }
}
