import 'package:flutter/material.dart';

class hii extends StatelessWidget {
  const hii({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.menu,size: 35,color: Colors.cyanAccent,),
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset("abc.png"),


        ),
        actions:[
          Text("GT" ,style: TextStyle(color: Colors.cyanAccent,fontSize: 35,fontWeight: FontWeight.bold),),

        ],
      ),
        body: Column(
            children: [



        Container(
          height: 200,
          width: 200,
          //color: Colors.cyanAccent,
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage("assets/abc.png"),
            ),
            //shape: BoxShape.circle,
          ),
          child: Center(child: Text("ji")),

        ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),



              TextFormField(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(child: ElevatedButton(onPressed: (){}, child: const Text  ("login"))),
              ),


  ],
              ),
      );




  }
}
