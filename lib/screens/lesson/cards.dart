import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_5/screens/lesson/sheetcards.dart';
import 'package:task_5/screens/lesson/sheetheader.dart';

class Cards extends StatelessWidget {
  double finalHeight = 780;
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
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height < finalHeight ? 230 : 330,
            left: 15,
            right: 15),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: cardList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2.1),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            fontSize: 16,
                            color: Colors.blueGrey[900],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 5),
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 255, 255, 1.0)),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        FaIcon(FontAwesomeIcons.language,
                            color: Colors.grey, size: 18),
                        SizedBox(width: 12),
                        Text(
                          'Englisch',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[900],
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () => showModalBottomSheet(
                      // isScrollControlled: true,   //If this will be true then it covers whole screen height
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Stack(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 75),
                                  child: BottomSheetData()),
                              stickyHeader(context)
                            ],
                          ),
                        );
                      },
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 70,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(255, 255, 255, 1.0)),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Text('+10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[900],
                                  fontSize: 18)),
                          SizedBox(width: 12),
                          Text(
                            'More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[900],
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
