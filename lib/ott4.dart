import 'package:carousel_slider/carousel_slider.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ott9.dart';
import 'color.dart';
import 'model.dart';

class ott4 extends StatefulWidget {

  const ott4({super.key});

  @override
  State<ott4> createState() => _ott4State();
}

class _ott4State extends State<ott4> {
  get index2 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
    Container(
      height: double.infinity,
      width: double.infinity,
      decoration:BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1,0.9],
            colors: [d,e]
        )
      ),
        child:  ListView(
          children: [
            Column(
              children: [
                CarouselSlider.builder(

    options: CarouselOptions(
    height:250,

                aspectRatio: 16/9,
                viewportFraction: 1.1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.15,
                scrollDirection: Axis.horizontal,
                enlargeStrategy: CenterPageEnlargeStrategy.height

    ),
      itemCount: 7,
      itemBuilder: (BuildContext context, int index,int)
      {
                return GestureDetector(
                   onTap: (){
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ott9()),
                    );
                  });
                },
                  child: Container(


                    decoration: BoxDecoration(
                        image: DecorationImage(

                          image: AssetImage(lis2[index].image),fit: BoxFit.fill,


                        )
                     ),



                  ),
                 );

      },
    ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(height: 50,width: 200,
                          child: ElevatedButton
                            (onPressed: (){

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ott9()),
                                );


                          }, child: Row(
                            children: [Icon(Icons.play_arrow,color: Colors.white,),
                              Text( 'Watch Now',style: TextStyle(color: Colors.white,fontSize: 20),),
                              //Text( ' Oct 25',style: TextStyle(color: Colors.white,fontSize: 20),)],
],
                          ),style: ElevatedButton.styleFrom(

                            backgroundColor: Colors.white.withOpacity(0.3),
                            shape: RoundedRectangleBorder(),
                          ),),
                        ),
                      ),

                      SizedBox(height: 50,width: 75,
                        child: ElevatedButton
                          (onPressed: (){}, child: Row(
                          children: [Icon(Icons.add,color: Colors.white,),
                            ],

                        ),style: ElevatedButton.styleFrom(

                          backgroundColor: Colors.white.withOpacity(0.3),
                          shape: RoundedRectangleBorder(),
                        ),),
                      ),
                    ],
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Latest Releases",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(


                        height:200,
                        child: ListView.builder(

                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext con, index)
                          {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child:GestureDetector(
                                    onTap: (){
                                  setState(() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ott9()),
                                    );
                                  });
                                },
                                child: Container(
                                  height:120,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(list3[index].image),fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black12

                                  ),
                                ),
                              ),
                            );

                          },

                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("ICC CWC 2023 and More",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      Icon(Icons.chevron_right,color: Colors.white,)

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(


                        height:150,
                        child: ListView.builder(

                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext con, index)
                          {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child:GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ott9()),
                                    );
                                  });
                                },
                                child: Container(
                                  height:80,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(list4[index].image),fit: BoxFit.fill,
                                      ),

                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black12

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
                            Text('Free Newly Added',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                          ],
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
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index,int)
                        {
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ott9()),
                                );
                              });
                            },
                            child: Container(


                              decoration: BoxDecoration(
                                  image: DecorationImage(

                                    image: AssetImage(list5[index].image),fit: BoxFit.fill,


                                  )
                              ),



                            ),
                          );

                        },
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Free Popular Shows',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          Container(


                            height:200,
                            child: ListView.builder(

                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext con, index)
                              {
                                return Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ott9()),
                                        );
                                      });
                                    },
                                    child: Container(
                                      height:120,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(list6[index].image),fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.black12

                                      ),
                                    ),
                                  ),
                                );

                              },

                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

    ),

    );
  }
}
