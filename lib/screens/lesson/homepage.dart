import 'package:flutter/material.dart';
import 'package:task_5/screens/lesson/lessonview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LessonView()),
    );
  }
}
