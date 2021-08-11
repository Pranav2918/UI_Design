import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Nav',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

class PlatformWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Platform',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

class Tut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Tutoring',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
