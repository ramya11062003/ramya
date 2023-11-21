import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/product.dart';

import 'color.dart';
import 'model.dart';

class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar (
        backgroundColor: abc,
        title: SizedBox(
          height: 45 ,
          child: Container(
            height: 50,
            width:double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
            decoration: InputDecoration(
border: InputBorder.none   ,
                prefixIcon: Icon(Icons.search),

                hintText: 'Search Amazon.in',


                suffixIcon: Container(

                  height: 10,
                  width:80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.qr_code_scanner_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.mic),
                      ),
                    ],
                  ),
                ),



              ),

            ),


          ),
        ),

      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           Container(
             height: 50,
             width: double.infinity,

             decoration: BoxDecoration(
               color: a,

             ),
             child: Row(
               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Icon(Icons.gps_fixed),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('deliver to you coimbtore-641018'),
                 ),
                 Icon(Icons.arrow_drop_down),

               ],
             ),
           ),



           Container(

             height: 120,
             child: ListView.builder(

               scrollDirection: Axis.horizontal,
               itemCount: lis.length,
               itemBuilder: (BuildContext con, index)
               {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       GestureDetector(

                       onTap: (){
                 setState(() {
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const product()),
                 );
                 });
                 },


                         child: Container(
                           height: 80,
                           width: 70,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                               image: AssetImage(lis[index].image)
                             )
                           ),
                         ),
                       ),
                       Text(lis[index].text),


                     ],

                   ),
                 );

               },

             ),
           ),

           CarouselSlider.builder(

               options: CarouselOptions(
                 height:250,

                 aspectRatio: 16/9,
                 viewportFraction: 1.1,
                 initialPage: 0,
                 enableInfiniteScroll: true,
                 reverse: false,
                 autoPlay: true,
                 autoPlayInterval: Duration(seconds: 3),
                 autoPlayAnimationDuration: Duration(milliseconds: 800),
                 autoPlayCurve: Curves.fastOutSlowIn,
                 enlargeCenterPage: true,
                 enlargeFactor: 0.15,
                 scrollDirection: Axis.horizontal,
                 enlargeStrategy: CenterPageEnlargeStrategy.height

               ),
             itemCount: lis1.length,
             itemBuilder: (BuildContext context, int index,int)
             {
               return GestureDetector(
               onTap: (){
                 setState(() {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const product()),
                   );
                 });
               },
                 child: Container(

                   //color: Colors.cyanAccent,
                   decoration: BoxDecoration(
                     image: DecorationImage(

                       image: AssetImage(lis1[index].image),fit: BoxFit.fill,

                     )
                   ),


                 ),
               );

             },
           ),

           Container(


             height:200,
             child: ListView.builder(

               scrollDirection: Axis.horizontal,
               itemCount: 7,
               itemBuilder: (BuildContext con, index)
               {
                 return Padding(
                   padding: const EdgeInsets.all(3.0),
                   child:Card(
                     elevation: 10,
                     child: Container(
                       height:140,
                       width: 150,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage("assets/cat2.jpg"),fit: BoxFit.fill,
                         ),
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.black12
                         // image: DecorationImage(
                         //   image: AssetImage("assets/cat2.jpg"),fit: BoxFit.fill,
                         // )
                       ),
                     ),
                   ),
                 );

               },

             ),
           ),




           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("Deals for you ",style: TextStyle(fontSize: 20),),

               ],
             ),
           ),
        GestureDetector(
          onTap: (){
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const product()),
              );
            });
          },
             child: Container(
               height: 300,
               child: GridView.builder(
                   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                       maxCrossAxisExtent: 200,
                       childAspectRatio: 1.6/ 2,
                       crossAxisSpacing: 10,
                       mainAxisSpacing: 10),
                   itemCount: 4,
                    //physics: AlwaysScrollableScrollPhysics(),
                   itemBuilder: (BuildContext ctx, index) {
                     return Card(
                       child: Container(
                         //alignment: Alignment.center,
                         height: 300,
                         width: double.infinity,
                          color: Colors.black12,
                         child: Column(
                           children: [
                             Container(
                               height: 200,
                              width: 160,
                               decoration:
                               BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("assets/shoe.webp"),fit: BoxFit.fill,
                                 ),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey,
                                     offset: const Offset(
                                       5.0,
                                       5.0,
                                     ),
                                     blurRadius: 10.0,
                                     spreadRadius: 2.0,
                                   ), //BoxShadow
                                   BoxShadow(
                                     color: Colors.white,
                                     offset: const Offset(0.0, 0.0),
                                     blurRadius: 0.0,
                                     spreadRadius: 0.0,
                                   ), //BoxShadow
                                 ],),
                               ),

                             Text("36% offer",style: TextStyle(color: Colors.pink)),


                           ],
                         ),
                       ),
                     );
                   }),
             ),
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("See more>> ",style: TextStyle(fontSize: 20),
                ),
           ),






















         ],
       ),
      ),
    );
  }
}

