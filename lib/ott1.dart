

import 'dart:async';

import 'package:flutter/material.dart';

import 'color.dart';
import 'ott2.dart';

class ott1 extends StatefulWidget {
  _ott1State createState() => _ott1State();
  const ott1({super.key});
}
class _ott1State extends State<ott1> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
               ott2(),
            )
        )
    );


  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Container
          (
          height: double.infinity,
         width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1,0.9],
                    colors: [d,e]
                )
            ),
          child: Image.asset('assets/movie.gif',)),


    );
  }
}


