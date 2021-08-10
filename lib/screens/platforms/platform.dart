import 'package:flutter/material.dart';
import 'package:task_5/screens/platforms/platformview.dart';

class Platforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PlatformView()),
    );
  }
}
