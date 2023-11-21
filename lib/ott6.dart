import 'package:flutter/material.dart';

import 'color.dart';
import 'ott9.dart';

class ott6 extends StatefulWidget {
  const ott6({super.key});

  @override
  State<ott6> createState() => _ott6State();
}

class _ott6State extends State<ott6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: d,
        title: Text('Coming Soon  Free-Newly Addedstyle',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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



      child:ListView(
        children: [
          Column(
            children: [
      GestureDetector(
          onTap: (){
      setState(() {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ott9()),
      );
      });
      },
                  child: Image(image: AssetImage('assets/w.jpg'))),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("MASTER",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red),),
                      Text("PEACE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red),),
                    ],
                  ),
                  Text("Releasing on Oct 25",style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 250,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [Icon(Icons.notifications,color: Colors.white,),
                      Text( ' Remind Me',style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text( ' Oct 25',style: TextStyle(color: Colors.white,fontSize: 20),)],

                  ),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(),
                  ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child:  GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ott9()),
                      );
                    });
                  },
                  child: Image
                    (
                      image: AssetImage('assets/t.jpg')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 320,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [Icon(Icons.notifications,color: Colors.white,),
                      Text( ' Remind Me',style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text( ' S8 on Oct 25',style: TextStyle(color: Colors.white,fontSize: 20),)],

                  ),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(),
                  ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child:  GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ott9()),
                      );
                    });
                  },child: Image(image: AssetImage('assets/p.jpg'))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 200,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [Icon(Icons.notifications,color: Colors.white,),
                      Text( ' Remind Me',style: TextStyle(color: Colors.white,fontSize: 20),),
                      // Text( ' S8 on Oct 25',style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],

                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(),
                  ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child:  GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ott9()),
                      );
                    });
                  },child: Image(image: AssetImage('assets/w.jpg'))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 200,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [Icon(Icons.notifications,color: Colors.white,),
                      Text( ' Remind Me',style: TextStyle(color: Colors.white,fontSize: 20),),
                      // Text( ' S8 on Oct 25',style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],

                  ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.3),
                      shape: RoundedRectangleBorder(),
                    ),),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
