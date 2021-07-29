import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget popup(BuildContext context, TextEditingController controller) {
  return Container(
    height: 450,
    child: SingleChildScrollView(
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
          location(context, controller),
          SizedBox(height: 30),
          detailRow(context, 'Tutoring Language', '',
              FaIcon(FontAwesomeIcons.globe, size: 18)),
          SizedBox(height: 30),
          detailRow(context, 'Price', '25.00/ 45min',
              FaIcon(FontAwesomeIcons.euroSign, size: 18)),
          button(context)
        ],
      ),
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
      margin: EdgeInsets.only(left: 15, right: 15, top: 25),
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

Widget location(BuildContext context, TextEditingController controller) {
  return GestureDetector(
    onTap: () {
      showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
          backgroundColor: Colors.white,
          context: context,
          builder: (context) => locationBottomSheet(context, controller));
    },
    child: Container(
      margin: EdgeInsets.only(left: 18),
      child: Row(
        children: [
          FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 19),
          SizedBox(width: 10),
          Text('Location')
        ],
      ),
    ),
  );
}

Widget button(BuildContext context) {
  return Container(
    height: 40,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(vertical: 35, horizontal: 35),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 1.0), //(x,y)
        blurRadius: 6.0,
      ),
    ], color: Colors.blue[700], borderRadius: BorderRadius.circular(28)),
    child: Center(
      child: Text('Show results',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget locationBottomSheet(
    BuildContext context, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 500,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back)),
              Text('Location',
                  style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 15, right: 15),
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    autofocus: true,
                    controller: controller,
                  ),
                ),
                IconButton(
                    onPressed: () => clearText(controller),
                    icon: Icon(Icons.close))
              ],
            ),
          )
        ],
      ),
    ),
  );
}

void clearText(TextEditingController controller) {
  controller.clear();
}

//Small BottomSheet

