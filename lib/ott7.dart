import 'package:flutter/material.dart';
import 'package:untitled/botott.dart';
import 'package:untitled/ott4.dart';

import 'color.dart';

class ott7 extends StatefulWidget {
  const ott7({super.key});

  @override
  State<ott7> createState() => _ott7State();
}

class _ott7State extends State<ott7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: d,
        title: Text('Downloads',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    body:Container(
    height: double.infinity,
    width: double.infinity,
    decoration:BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.1,0.9],
    colors: [d,e]
    )
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/download.png'),fit: BoxFit.fill,)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('No Downloads Available',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('Explore and download your favourite movie and shows to watch on the go',style: TextStyle(color: Colors.grey,fontSize: 20,),),
        )),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ElevatedButton(onPressed: (){

                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const botott()),
                 );

           }, child:

              Text( 'Go to Home',style: TextStyle(color: Colors.white,fontSize: 20),),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(),
        ),),
         ),
        SizedBox(height: 350,)

      ],
    ),
    ),
    );
  }
}
