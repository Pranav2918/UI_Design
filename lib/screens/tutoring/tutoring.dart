import 'package:flutter/material.dart';
import 'package:task_5/screens/tutoring/tutoringview.dart';
import 'package:task_5/screens/tutoring/tutoringviewS.dart';

class Tutoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(body: TutoringViewL());
  }
}
