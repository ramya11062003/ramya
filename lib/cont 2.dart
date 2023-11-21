import 'package:flutter/material.dart';

class cont2 extends StatefulWidget {
  const cont2({super.key});

  @override
  State<cont2> createState() => _cont2State();
}

class _cont2State extends State<cont2> {
  int a=0;
  void add() {
    setState(() {
      a++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Column(
   children: [
     Center(child: ElevatedButton(onPressed: add, child: Text('add'))),

           // Text("$a"),


           Container(height:800,
             width: 200,
             child: ListView.builder(
               scrollDirection: Axis.vertical,
               itemCount: a,
               itemBuilder: (BuildContext context, int index)
               {
                 return Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(color: Colors.blueGrey,
                     border: Border.all(),

                   ),
                 );

               },
             ),
           ),
 ],),
 );
  }
}
