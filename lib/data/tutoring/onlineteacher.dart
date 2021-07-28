import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List onlineTeachers = [
  {
    'name': 'Lissane',
    'desc': 'Student',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.language,
      size: 15,
    )),
  },
  {
    'name': 'Coroline',
    'desc': 'Lorem Ipsum',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.percentage,
      size: 15,
    )),
  },
  {
    'name': 'Julia',
    'desc': 'There are many variations of passages',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.leaf,
      size: 15,
    )),
  },
  {
    'name': 'Emilia',
    'desc': 'Where can I get some?',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.leaf,
      size: 15,
    )),
  }
];

Widget subjectIcon(FaIcon icon) {
  return Container(child: icon);
}
