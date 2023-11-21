import 'package:flutter/material.dart';
import 'package:untitled/ott2.dart';

import 'color.dart';

class ott8 extends StatefulWidget {
  const ott8({super.key});

  @override
  State<ott8> createState() => _ott8State();
}

class _ott8State extends State<ott8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: d,
      actions: [
        Icon(Icons.settings,color: Colors.white,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(' Help & Settings',style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
      ],
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
                  child: Image(image: AssetImage('assets/profile.jpg'),fit: BoxFit.fill,)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Login to watch',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Start watching from where you let off,personalise for kids and more',style: TextStyle(color: Colors.grey,fontSize: 20,),),
            )),

            SizedBox(height: 50,width: 200,
              child: ElevatedButton(onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ott2()),
                    );
                  },
              child:Text( 'Log In',style: TextStyle(color: Colors.white,fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.withOpacity(0.3),
                  shape: RoundedRectangleBorder(),
                ),),),

            SizedBox(height: 350,)

          ],
        ),
      ),
    );
  }
}
