import 'package:flutter/material.dart';

import 'botott.dart';
import 'color.dart';

class ottlan extends StatefulWidget {
  const ottlan({super.key});

  @override
  State<ottlan> createState() => _ottlanState();
}

class _ottlanState extends State<ottlan> {
  bool clk1=false;
  bool clk2=false;
  bool clk3=false;
  bool clk4=false;
  bool clk5=false;
  bool clk6=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Language Settings',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Select language to continue',style: TextStyle(fontSize: 25,color: Colors.yellow,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        setState(() {

                          clk1 =  !clk1;

                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: clk1? f:Colors.white
                        ),
                        child: Center(child: Text("English",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        setState(() {

                          clk2 =  !clk2;

                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: clk2?f:Colors.white
                        ),
                        child: Center(child: Text("தமிழ்",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        setState(() {

                          clk3 =  !clk3;

                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: clk3? f:Colors.white
                        ),
                        child: Center(child: Text("മലയാളം",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        setState(() {

                          clk4 =  !clk4;

                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: clk4?f:Colors.white
                        ),
                        child: Center(child: Text("हिन्दी ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        setState(() {

                          clk5 =  !clk5;

                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: clk5? f:Colors.white
                        ),
                        child: Center(child: Text("తెలుగు",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        setState(() {

                          clk6 =  !clk6;

                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: clk6?f:Colors.white
                        ),
                        child: Center(child: Text("ಕನ್ನಡ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
            setState(() {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const botott()),
            );
            });
            },
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                    Icon(Icons.arrow_forward,color: Colors.white,)
                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
