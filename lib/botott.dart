import 'package:flutter/material.dart';
import 'package:untitled/ott4.dart';

import 'ott5.dart';
import 'ott6.dart';
import 'ott7.dart';
import 'ott8.dart';

class botott extends StatefulWidget {
  const botott({super.key});

  @override
  State<botott> createState() => _botottState();
}

class _botottState extends State<botott> {
  int _index1 = 0;

  final pages = [
    ott4(),
    ott5(),
    ott6(),
    ott7(),
    ott8(),
  ];
  void tap(index){
    setState(() {
      _index1=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index1],
      bottomNavigationBar: BottomNavigationBar(fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search,color:Colors.black,),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up,color: Colors.black,),label: 'Trending'
              ''),
          BottomNavigationBarItem(icon: Icon(Icons.file_download,color: Colors.black,),label: 'Downloads'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'Profile'),

        ],
        currentIndex: _index1,
        onTap: tap,

      ),
    );
  }
}
