import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetData extends StatelessWidget {
  final List<Map> cardList = [
    {
      'name': 'Mathematik',
      'icon': FaIcon(FontAwesomeIcons.percentage, color: Colors.grey, size: 18)
    },
    {
      'name': 'Physik',
      'icon': FaIcon(FontAwesomeIcons.magnet, color: Colors.grey, size: 18)
    },
    {
      'name': 'Deutsch',
      'icon': FaIcon(FontAwesomeIcons.language, color: Colors.grey, size: 18)
    },
    {
      'name': 'Chemie',
      'icon': FaIcon(FontAwesomeIcons.atom, color: Colors.grey, size: 18)
    },
    {
      'name': 'Sachunterite',
      'icon': FaIcon(FontAwesomeIcons.book, color: Colors.grey, size: 18),
    },
    {
      'name': 'Biologie',
      'icon': FaIcon(FontAwesomeIcons.pagelines, color: Colors.grey, size: 18)
    },
    {
      'name': 'Englisch',
      'icon': FaIcon(FontAwesomeIcons.language, color: Colors.grey, size: 18)
    },
    {
      'name': 'Franzosisch',
      'icon': FaIcon(FontAwesomeIcons.language, color: Colors.grey, size: 18)
    },
    {
      'name': 'Geographie',
      'icon': FaIcon(FontAwesomeIcons.globe, color: Colors.grey, size: 18)
    },
    {
      'name': 'Geschichte',
      'icon': FaIcon(FontAwesomeIcons.university, color: Colors.grey, size: 18)
    },
    {
      'name': 'Informatik',
      'icon': Icon(Icons.computer, color: Colors.grey, size: 18)
    },
    {
      'name': 'Kunst',
      'icon': FaIcon(FontAwesomeIcons.pen, color: Colors.grey, size: 18)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: cardList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2.3),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Color.fromRGBO(244, 244, 244, 0.9),
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 5),
                  child: cardList[index]['icon']),
              SizedBox(width: 10),
              Text(
                cardList[index]['name'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey[900],
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        );
      },
    );
  }
}
