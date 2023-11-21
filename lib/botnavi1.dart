import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/amazon.dart';
import 'package:untitled/botnavi.dart';
import 'package:untitled/email.dart';

class botnavi1 extends StatefulWidget {
  const botnavi1({super.key});

  @override
  State<botnavi1> createState() => _botnavi1State();

}

class _botnavi1State extends State<botnavi1> {

  final _formKeyy = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKeyy,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1,0.2,0.7,0.9],
              colors: [
                Colors.yellowAccent,
                Colors.white,
                Colors.lightBlue,
                Colors.greenAccent,
              ],
            ),
          ),



            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.only
                              (topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),

                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                  ),
                                   image: DecorationImage(
                                    image: AssetImage("assets/btfly.jpg"),
                              ),

                                ),

                              ),
                              Text("A"),
                            ],

                          ),


                        ),
                      ),


                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Container(
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.only
                                  (topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),

                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage("assets/square.png"),
                                      ),
                                    ),
                                  ),
                                  Text("B"),
                                ],
                              ),



                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 20),
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.only
                            (topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),

                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/square.png"),
                                ),

                              ),

                            ),
                            Text("C"),
                          ],

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 20),
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.only
                            (topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),

                        ),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("assets/btfly.jpg"),
                                  ),

                                ),

                              ),
                              Text("D"),
                            ],

                          ),

                        ),
                    ),

                  ],

                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35,top: 30),
                      child: Container(
                        height: 365,
                        width: 320,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/cat.jpg"),fit: BoxFit.fill,
                          ),
                        ),




                          child:ClipRRect(
                            child: BackdropFilter(
                              filter:ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                              child:Row(
                                children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/logo.png"),
                                          )
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 125,left: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 150,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'enter name',
                                              border: OutlineInputBorder(),
                                            ),
                                            validator: (value){
                                              if(value==null|| !RegExp(r"^[a-zA-Z]").hasMatch(value)){
                                                return "Enter Correct name";
                                              }else{
                                                return null;
                                              }


                                            },
                                          ),
                                        ),
                                        ElevatedButton(onPressed: (){
                                          if(_formKeyy.currentState!.validate())
                                          {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const botnavi()),
                                            );
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
                                          }

                                        }, child: Text("login")),
                                      ],
                                    ),
                                  ),



                                ],

                              ),
                            ),
                          ),

                      ),
                    ),


                  ],
                )

    ],

    ),



        ),
      ),

    );
  }
}
