import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List teachers = [
  {
    'name': 'Benjamin',
    'desc':
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.language,
      size: 15,
    )),
    'detailDesc':
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'subject': 'Englisch',
    'tutoringLanguage': 'Englisch',
    'location': 'Barestein',
    'fee': '100.00/ 45min'
  },
  {
    'name': 'Sebastian',
    'desc':
        'Lorem Ipsum has been the industrys standard dummy text ever since the and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 1500s, when an unknown printer took a galley of',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.percentage,
      size: 15,
    )),
    'detailDesc':
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'subject': 'Detchs',
    'tutoringLanguage': 'Englisch',
    'location': 'Tokyo',
    'fee': '10.00/ 45min'
  },
  {
    'name': 'Lobbo',
    'desc':
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'class': 'Class 1 - 13',
    'subjectIcon': subjectIcon(FaIcon(
      FontAwesomeIcons.leaf,
      size: 15,
    )),
    'detailDesc':
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'subject': 'Math',
    'tutoringLanguage': 'Deustch',
    'location': 'Barestein',
    'fee': '90.00/ 45min'
  }
];

Widget subjectIcon(FaIcon icon) {
  return Container(child: icon);
}
