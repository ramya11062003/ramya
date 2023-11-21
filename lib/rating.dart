import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class hello extends StatelessWidget {
  const hello ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: Icon(Icons.add_a_photo_outlined),
        title: Text("hey there!"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
        ],

      ),
      body:

      Column(

        children: [

          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage('assets/lion.png'),

                        ),
                      ),
                      child: Center(child: Text("welcome"),),



                    ),



                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 150),
                   child: Column(
                     children: [
                       const SizedBox(
                         child: Text("Rating bar"),
                       ),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RatingBar.builder(
                           initialRating: 3,
                           minRating: 1,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                           itemBuilder: (context, _)=>Icon(
                             Icons.star,
                             color: Colors.yellowAccent,
                           ),
                           onRatingUpdate: (rating){
                             print(rating);
                           },
                         ),
                       ),
                     ],
                   ),
                 ),




                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage('assets/lion.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(
                      "wish you happy birthday to me"),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage('assets/lion.png'),
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

    );
  }
}
