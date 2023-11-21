

import 'package:flutter/material.dart';

import 'color.dart';

class odd extends StatefulWidget {
  const odd({super.key});

  @override
  State<odd> createState() => _cal1State();
}

class _cal1State extends State<odd> {
  TextEditingController cal1=TextEditingController();
  bool _visible =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: TextFormField(controller: cal1,

              style: TextStyle(fontSize:50,fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                filled: true,
                fillColor: f,
                border: InputBorder.none,

              )

              ),


          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: ElevatedButton(onPressed: ()
            {
            int a=int.parse(cal1.text);

              if(a%2==0){
                showDialog(context: context, builder: (BuildContext context)
                {
                  return AlertDialog(
                    title:  Text("$a is an Even number"),backgroundColor: Colors.lightBlueAccent,
                  );
                });}

                else{
                  showDialog(context: context, builder: (BuildContext context)
                  {
                    return AlertDialog(
                      title:  Text("$a is an Odd number"),backgroundColor: Colors.blue,
                    );
                  });

              }
            }, child: Text("OK",style: TextStyle(fontSize: 30,color: Colors.pink),),style: ElevatedButton.styleFrom(fixedSize: Size(100, 60),backgroundColor: Colors.lightGreenAccent),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedOpacity(
    opacity: _visible ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 500),
              child: Container(
                height: 400,
                width: 400,
                decoration:BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("odd.jpg",),fit: BoxFit.fill,
                  )
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _visible = !_visible;
              });
            },
            tooltip: 'Toggle Opacity',
            child: const Icon(Icons.ads_click),
          )




        ],
      ),
    );
  }
}

class _visible {
}
