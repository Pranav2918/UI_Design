import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:task_5/data/platform/cardlist.dart';
import 'package:task_5/model/platform/carddetails.dart';
import 'package:task_5/widgets/static_sublist.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  double mainSize = 780;
  String urlImage =
      "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsYXh5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  List<CardInfo> platformCard = Platforms.getDetails();

  final int index;
  Details({
    Key? key,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(
                      onPressed: () {
                        Share.share('Share with');
                      },
                      icon: Icon(
                        Icons.share,
                      )),
                ],
                pinned: true,
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        platformCard[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height < mainSize
                          ? 180
                          : 170,
                      left: 15,
                      child: Container(
                        child: platformCard[index].logo,
                        height: MediaQuery.of(context).size.height < mainSize
                            ? 50
                            : 60,
                        width: MediaQuery.of(context).size.height < mainSize
                            ? 50
                            : 60,
                      ),
                    )
                  ],
                )),
                expandedHeight: mainSize < MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.height * 0.250
                    : MediaQuery.of(context).size.height * 0.340,
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 15),
                      child: Text(
                        platformCard[index].name,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blueGrey[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10, left: 15),
                        child: platformCard[index].isPaid),
                    Container(
                        margin: EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          'Subjects',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )),
                    // TextButton(
                    //     onPressed: () {
                    //       print(
                    //           platformCard[index].subjects.map((e) => e['name']));
                    //     },
                    //     child: Text('Console')),
                    StaticSubjects(),
                    Container(
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: Text(
                          'Description',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: Text(platformCard[index].description,
                          style: TextStyle(
                              color: Colors.blueGrey[900], fontSize: 15)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          'School Year',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: Text(platformCard[index].forYear,
                          style: TextStyle(
                              color: Colors.blueGrey[900], fontSize: 14)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          'Rating',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 15),
                      child: Row(
                        children: [
                          platformCard[index].star,
                          SizedBox(width: 5),
                          Text(platformCard[index].rating)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 15),
                      child: Text('121231 ratings',
                          style: TextStyle(color: Colors.grey, fontSize: 11)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 15),
                      child: Text('App stores & link ',
                          style: TextStyle(color: Colors.grey, fontSize: 11)),
                    ),
                    InkWell(
                      onTap: () => launch(platformCard[index].webLink),
                      child: Container(
                          margin: EdgeInsets.only(top: 5, left: 15),
                          child: Text('website',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12))),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => launch(platformCard[index].appLink),
                          child: Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/playstore.png'),
                                      fit: BoxFit.contain))),
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/appstore.png'),
                                    fit: BoxFit.contain)))
                      ],
                    )
                  ],
                )
              ])),
            ],
          ),
        ],
      ),
    );
  }
}
