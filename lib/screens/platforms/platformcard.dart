import 'package:flutter/material.dart';
import 'package:task_5/data/platform/cardlist.dart';
import 'package:task_5/model/platform/carddetails.dart';
import 'package:task_5/screens/platforms/details.dart';

class PlatformCard extends StatefulWidget {
  @override
  _PlatformCardState createState() => _PlatformCardState();
}

class _PlatformCardState extends State<PlatformCard> {
  final double size = 400;
  List<CardInfo> platformCard = Platforms.getDetails();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: platformCard.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          childAspectRatio:
              MediaQuery.of(context).size.width < size ? 1.4 : 1.7),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(index: index),
                ));
          },
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      platformCard[index].name,
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.blueGrey[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(child: platformCard[index].logo)
                              ],
                            ),
                            Row(
                              children: [
                                Row(children: [
                                  Container(child: platformCard[index].star)
                                ]),
                                SizedBox(width: 8),
                                Text(platformCard[index].rating)
                              ],
                            ),
                            SizedBox(height: 8),
                            platformCard[index].isPaid,
                            SizedBox(height: 10),
                            Text(platformCard[index].description)
                          ],
                        ),
                      ),
                    ],
                  ))),
        );
      },
    );
  }
}
