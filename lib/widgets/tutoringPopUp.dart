import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget popup(BuildContext context) {
  return Container(
    height: 450,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        headerRow(),
        SizedBox(height: 55),
        detailRow(
            context,
            'Subject',
            'All subjects',
            FaIcon(FontAwesomeIcons.folder,
                color: Colors.grey.shade900, size: 18)),
        SizedBox(height: 30),
        detailRow(
            context,
            'School year',
            'All levels',
            FaIcon(FontAwesomeIcons.graduationCap,
                color: Colors.grey.shade900, size: 18)),
        SizedBox(height: 30),
        location(),
        SizedBox(height: 30),
        detailRow(context, 'Tutoring Language', '',
            FaIcon(FontAwesomeIcons.globe, size: 18)),
        SizedBox(height: 30),
        detailRow(context, 'Price', '25.00/ 45min',
            FaIcon(FontAwesomeIcons.euroSign, size: 18)),
        button(context)
      ],
    ),
  );
}

Widget detailRow(
    BuildContext context, String type, String subType, FaIcon icon) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15),
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 19,
              width: 19,
              child: icon,
            ),
            SizedBox(width: 10),
            Text(type)
          ],
        ),
        Text(subType)
      ],
    ),
  );
}

Widget headerRow() {
  return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Filter by',
              style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Text('Reset',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
        ],
      ));
}

Widget location() {
  return Container(
    margin: EdgeInsets.only(left: 18),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 19),
        SizedBox(width: 10),
        Text('Location')
      ],
    ),
  );
}

Widget button(BuildContext context) {
  return Container(
    height: 40,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 35, right: 35, top: 35),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(28)),
    child: Center(
      child: Text('Show results',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  );
}
