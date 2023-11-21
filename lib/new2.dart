import 'package:flutter/material.dart';

class me extends StatelessWidget {
  const me({super.key});

  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width:20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
              color: Colors.cyanAccent,
              image: DecorationImage(
                image: AssetImage("assets/abc.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        title: Text("GT"),
        actions: [Icon(Icons.menu)],

      ),
      body:Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height:300,
              width: 300,
                decoration: BoxDecoration(
                  border: Border.all() ,
                  borderRadius:BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/abc.png"),



                ),
                  ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
              border: Border.all() ,
              shape:BoxShape.circle,color: Colors.pink,
                        image: DecorationImage(
                          image: AssetImage("assets/abc.png"),
                          fit: BoxFit.fill,



                      ),

                    ),


                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'enter name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("login")),
                  ],

              ),


            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),

            child: Container(height: 150,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all() ,
               borderRadius:BorderRadius.circular(0)),

              child: Row(
                children: [
              
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height:60,
                     width: 60,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                           image:AssetImage("assets/abc.png"),

                       ),
                       border: Border.all(),
                     ) ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage("assets/abc.png"),

                        ),
                        border: Border.all(),
                      ) ,
                    ),
                  ),


                ],

              ),

            ),
          ),

        ],

      ),

    )
    );


  }
}

