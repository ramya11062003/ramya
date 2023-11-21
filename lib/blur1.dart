


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/botnavi.dart';

import 'botnavi1.dart';

class blur1 extends StatefulWidget {
  const blur1({super.key});

  @override
  State<blur1> createState() => _blur1State();
}

class _blur1State extends State<blur1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Form(
        key: _formKey,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg5.jpg"), fit: BoxFit.fill,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: ListView(


            children: [
              Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/cat.jpg"),fit: BoxFit.fill,


                  ),
                ),


                child: ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter:ImageFilter.blur(sigmaY: 10,sigmaX: 10),

                    child: Column(
                        children: [Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/logo.png"),fit: BoxFit.fill,
                            ),
                          ),

                    ),
                        ),




                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: 'enter email id',
                                border: OutlineInputBorder(),
                              ),

                              validator: (value){
                                if(value==null|| !RegExp
                                  (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                                  return "Enter Correct Email Address";
                                }else{
                                  return null;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.password),
                                hintText: 'password',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value){
                                if(value==null|| value.length<4){
                                  return "Enter correct password";
                                }else{
                                  return null;
                                }
                              },

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){
                                  if(_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("valid ok")));

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (
                                          context) => const botnavi1()),
                                    );
                                  }



                            }, child: Text("login")),
                          ),
                        ],
                    ),
                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/tree.jpg"),fit: BoxFit.fill,
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                          Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage('assets/lion.png'),

                            ),
                          ),
                          ),



                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [

                                ElevatedButton(onPressed: (){}, child: Icon(Icons.download)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(onPressed: (){}, child: Icon(Icons.share)),
                                ),

                              ],
                            ),
                          ),
                        ],
                    ),
                          Row(
                            children: [ Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage('assets/lion.png'),

                                ),
                              ),
                            ),

                            ],
                          ),],

                    ),
                      ),

                    ),

                  ],
                ),
              )
            ],

          ),
        ),
      ),
      ),
    );
  }
}