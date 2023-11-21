import 'package:flutter/material.dart';

class full extends StatelessWidget {
  const full({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height:double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg2.webp"),fit: BoxFit.fill,
              ),
            ),
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height:540,
                    width: 450,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/bg3.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    child:Column(
                      children: [
                        Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                height: 130,
                                width: 135,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/spmn.png"),
                                  ),
                                ),
                              ),
                            ),

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage("assets/square.png"),
                                              ),
                                            ),
                                            ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(13.0),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage("assets/square.png"),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),



                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/square.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/square.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            ),


],
                                ),
                              ],
                            ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/logo.png"),
                                  ),
                                ),
                                child: Center(child: Text("A",style: TextStyle(fontSize: 30)),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/logo.png"),
                                  ),
                                ),
                                child: Center(child: Text("B",style: TextStyle(fontSize: 30))),
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/logo.png"),
                                  ),
                                ),
                                child: Center(child: Text("C",style: TextStyle(fontSize: 30)),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/logo.png"),
                                  ),
                                ),
                                child: Center(child: Text("D",style: TextStyle(fontSize: 30)),),
                              ),
                            )
                          ],

                        )
                        ],

                        ),

                    ),

                      ),
                Column(
                  children: [
                    Container(
                      height: 250,
                      width: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/tree.jpg"),fit: BoxFit.fill,
                        )
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/lion.png"),fit: BoxFit.fill,
                                  ),
                              ),
                            ),
                          ),
                          Expanded(child: Text("life is full of surprises and miracles",style: TextStyle(fontSize: 24),),),
                        ],
                      ),
                    ),

                  ],
                )




              ],

            ),


            ),




     );
  }
}
