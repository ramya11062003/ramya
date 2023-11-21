import 'package:flutter/material.dart';
import 'package:untitled/amazon.dart';
import 'package:untitled/blur1.dart';
import 'package:untitled/email.dart';
import 'package:untitled/instagram.dart';
import 'package:untitled/product.dart';
import 'package:untitled/rating.dart';
import 'package:untitled/report.dart';
import 'package:untitled/spotify.dart';

import 'botnavi1.dart';


class botnavi extends StatefulWidget {
  const botnavi({super.key});

  @override
  State<botnavi> createState() => _botnaviState();
}

class _botnaviState extends State<botnavi> {
  int _index = 0;

  final pages = [
    amazon(),
    spotify(),
    rpt(),
    insta(),
  ];
  void tap(index){
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_music_rounded,color:Colors.black,),label: 'Music'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.perm_media,color: Colors.black,),label: 'Insta'),

        ],
        currentIndex: _index,
        onTap: tap,

      ),
    );
  }
}

