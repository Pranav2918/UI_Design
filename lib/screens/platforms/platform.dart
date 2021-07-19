import 'package:flutter/material.dart';
import 'package:task_5/screens/platforms/platformView1.dart';
import 'package:task_5/screens/platforms/platformView2.dart';

class Platforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(
        builder: (context, constraints) {
          if (screenSize.height < 780) {
            return PlatformViewS();
          } else {
            return PlatformViewL();
          }
        },
      )),
    );
  }
}
