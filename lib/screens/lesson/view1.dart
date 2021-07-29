import 'package:flutter/material.dart';
import 'package:task_5/screens/lesson/cards.dart';
import 'package:task_5/screens/lesson/searchbar.dart';

class View1 extends StatelessWidget {
  String urlImage =
      "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsYXh5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 0.9),
      body: Stack(children: <Widget>[
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(urlImage), fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(top: 20, right: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[700],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                  ), //Bo
                ]),
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 90, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Learning Material',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                Text(
                  'Search For Learning Material',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            )),
        Cards(),
        Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 160),
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(28)),
            child: searchBar(context)),
      ]),
    );
  }
}
