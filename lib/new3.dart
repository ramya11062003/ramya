import 'package:flutter/material.dart';
class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
       children: [
         Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(
                     shape:BoxShape.circle,color: Colors.pink,
                     image: DecorationImage(
                       image: AssetImage("assets/logo.png"),
                       fit: BoxFit.fill,
                     ),
                 ),
               ),

             ),
           ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 250,
             width: 250,
             decoration: BoxDecoration(
               border: Border.all(),
             ),

             child: Column(
               children: [
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(14.0),
                       child: Container(height: 95,
                           width: 70,
                         decoration: BoxDecoration(
                           border: Border.all(),
                         ),
                         child: Column(
                           children: [
                             Container(
                                 height: 70,
                                 width: 70,
                                 decoration: BoxDecoration(
                                    border: Border.all(),
                                 ),
                                 child: Image.asset("assets/spmn.png"),
                               ),
                                Column(
                                 children: [
                                   Text("abcd"),
                                 ],
                               ),
             ],
                             ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 95,
                         width: 70,
                         decoration: BoxDecoration(
                           border: Border.all(),
                         ),
                         child: Column(
                           children: [
                             Container(
                               height: 70,
                               width: 70,
                               decoration: BoxDecoration(
                                 border: Border.all(),
                              ),
                               child: Image.asset("assets/spmn.png"),
                                 ),
                             Column(
                               children: [
                                 Text("abcd"),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Container(
                       height: 95,
                       width: 70,
                       decoration: BoxDecoration(
                         border: Border.all(),
                       ),
                       child: Column(
                         children: [
                           Container(
                             height: 70,
                             width: 70,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               ),
    child: Image.asset("assets/spmn.png"),
                             ),
                           Column(
                             children: [
                               Text("abcd"),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),

























                   Column(
                     children: [Container(
                     height: 30,
                     width: 40,
                     decoration: BoxDecoration(
                       border: Border.all(),
                       image: DecorationImage(
                         image: AssetImage("assets/spmn.png"),
                       ),
                     ),
                   ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           height: 30,
                           width: 40,
                           decoration: BoxDecoration(
                             border: Border.all(),
                             image: DecorationImage(
                               image: AssetImage("assets/spmn.png")
                             )
                           ),
                         ),
                       ),

],
                   ),
                   Row(
                     children: [
                       Column(
    children: [
      Text("have"),
      Text("a"),
      Text("nice"),
      Text("day"),
    ],
                         

                       ), ],
                     
                   ),


                 ],),





                 
               ],

             ),


          ),





         ),
         Container(
           height: 130,
           width: 190,
           decoration: BoxDecoration(
             border: Border.all(),
           ),
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     icon: Icon(Icons.person),
                     hintText: 'enter name',
                     border: OutlineInputBorder(),

    ),
    ),
               ),
               ElevatedButton(onPressed:(){}, child: Text("login")),
             ],
           ),

         ),


           ],



         ),

         );






    }
    }




