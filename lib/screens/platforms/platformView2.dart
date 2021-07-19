import 'package:flutter/material.dart';
import 'package:task_5/screens/platforms/platformcard.dart';
import 'package:task_5/widgets/navbar.dart';

class PlatformViewL extends StatelessWidget {
  String urlImage =
      "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsYXh5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 0.9),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.topLeft,
              //         end: Alignment.bottomRight,
              //         colors: [Colors.purple, Colors.indigo])),
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
                margin: EdgeInsets.only(top: 185, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Platforms',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    Text(
                      'Find the right learning platform for you',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                )),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.only(top: 270, left: 25, right: 25),
              child: Column(
                children: [
                  PlatformCard(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
