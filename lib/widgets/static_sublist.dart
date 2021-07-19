import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaticSubjects extends StatelessWidget {
  final List<Map> cardList = [
    {
      'name': 'Mathematik',
      'icon': FaIcon(FontAwesomeIcons.percentage, color: Colors.grey, size: 16)
    },
    {
      'name': 'Physik',
      'icon': FaIcon(FontAwesomeIcons.magnet, color: Colors.grey, size: 16)
    },
    {
      'name': 'Deutsch',
      'icon': FaIcon(FontAwesomeIcons.language, color: Colors.grey, size: 16)
    },
    {
      'name': 'Chemie',
      'icon': FaIcon(FontAwesomeIcons.atom, color: Colors.grey, size: 16)
    },
    {
      'name': 'Sachunterite',
      'icon': FaIcon(FontAwesomeIcons.book, color: Colors.grey, size: 16),
    },
    {
      'name': 'Biologie',
      'icon': FaIcon(FontAwesomeIcons.pagelines, color: Colors.grey, size: 16)
    },
    {
      'name': 'Music',
      'icon': FaIcon(FontAwesomeIcons.music, color: Colors.grey, size: 16)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: GridView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: cardList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 2.6),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Container(
                      child: cardList[index]['icon'],
                    )),
                SizedBox(width: 10),
                Text(
                  cardList[index]['name'],
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
