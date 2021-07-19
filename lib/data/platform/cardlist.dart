import 'package:flutter/material.dart';
import 'package:task_5/model/platform/carddetails.dart';

class Platforms {
  bool isPaid = false;
  static List<CardInfo> getDetails() {
    return [
      //1...
      CardInfo(
          id: 1,
          name: 'Anton',
          description:
              'És un fet establert de forma evident que un lector es distraurà amb el contingut llegible duna pàgina quan miri a la seva composició.',
          logo: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/anton.png')))),
          rating: '4.8',
          isPaid: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.indigo, borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'FREE',
              style: TextStyle(color: Colors.white, letterSpacing: 1.0),
            )),
          ),
          star: Container(
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ),
          webLink: 'https://anton.app/de/',
          appLink:
              'https://play.google.com/store/apps/details?id=com.solocode.anton',
          imageUrl:
              'https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3R1ZHl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          forYear: 'Klasse 1 bis 10'),

      //2...

      CardInfo(
          id: 2,
          name: 'Bettermarks',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
          logo: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bm.png')))),
          rating: '1.9',
          isPaid: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'PAID',
              style: TextStyle(color: Colors.white, letterSpacing: 1.0),
            )),
          ),
          star: Container(
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.grey),
                Icon(Icons.star, color: Colors.grey),
                Icon(Icons.star, color: Colors.grey),
              ],
            ),
          ),
          webLink: 'https://bettermarks.com/',
          appLink:
              'https://play.google.com/store/apps/details?id=co.gradeup.android',
          imageUrl:
              'https://images.unsplash.com/photo-1495465798138-718f86d1a4bc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHN0dWR5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          forYear: 'Klasse 1 bis 8'),

      //3...

      CardInfo(
          id: 3,
          name: 'Binogi',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
          logo: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/binogi.png')))),
          rating: '',
          isPaid: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.indigo, borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'FREE',
              style: TextStyle(color: Colors.white, letterSpacing: 1.0),
            )),
          ),
          star: Container(
              child: Text(
            'Not Range Yet',
            style: TextStyle(color: Colors.grey, fontSize: 11),
          )),
          webLink: 'https://www.binogi.ca/',
          appLink:
              'https://play.google.com/store/apps/details?id=co.edureka.app',
          imageUrl:
              'https://images.unsplash.com/photo-1560785496-3c9d27877182?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN0dWR5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
          forYear: 'Klasse 1 bis 5')
    ];
  }
}
