import 'package:flutter/material.dart';

import 'color.dart';

class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body:
      NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [SliverAppBar(
            automaticallyImplyLeading: false,
           expandedHeight: 350,
           leading: Icon(Icons.arrow_back),
           title: Text("Rahman hits",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            pinned: true,
            centerTitle:true,

            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
            background: Container(
              height: double.infinity,
                width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [a,abc]
                ),
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Icon(Icons.arrow_back),

                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Icon(Icons.arrow_back),

                        Padding(
                          padding: const EdgeInsets.only(left:50),
                          child: Container(
                            height: 40,
                            width: 230,
                            decoration: BoxDecoration(
                              color: Colors.grey
                            ),

                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon:  Icon(Icons.search),
                                border:InputBorder.none,
                                hintText: ('Find in playlist'),
                                hintStyle:TextStyle(color: Colors.white),

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 80,
                           decoration: BoxDecoration(
                             color: Colors.grey,
                           ),
                           child: TextFormField(
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: '     sort',
                               hintStyle: TextStyle(color: Colors.white),
                             ),
                           ),
                          ),
                        ),




                      ],
                    ),
                  ),
                  Center(child: Image.asset("assets/arr.jpeg")),


                ],
              ),
            ),
            ),
          )];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Love and more Love from the Isai Puyal',style: TextStyle(color: Colors.white,fontSize: 15),),


                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/spotify.png"),fit: BoxFit.fill,
                      ),
                    ),

                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(  text: 'Made for',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      TextSpan(text: ' Tamilshivam',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    ],

                    ),

                  ),
                ],
              ),

              Row(
                children: [
                  Text('79,509 likes . 6h 29min',style: TextStyle(color: Colors.white),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border,color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_circle_down_sharp,color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_vert,color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180),
                      child: Icon(Icons.play_circle_outline_sharp,color: Colors.green,size: 50,),
                    ),
                  ],
                ),
              ),
              Container(
                  height:800,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder:  (BuildContext con, index)
                      {
                        return Card(
                          color: Colors.white,
                          child: ListTile(
                            leading:  Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/boys.jpg"),fit: BoxFit.fill),
                                )
                              ),
                            title: Text("Ale Ale"),
                            subtitle:
                            Row(
                              children: [
                                Container(
                          height: 20,
                          width: 45,color: Colors.black,
                                  child: Center(child: Text("LYRICS",style: TextStyle(color: Colors.white,fontSize: 10),)),

                                ),
                                Text('  Karthik,Sivaraman,K.S.Chithra')
                              ],
                            ),
                            trailing: Icon(Icons.more_vert),
                            // child: Text("Ale ale"),
                            // subtitle: Container(
                            //   height: 5,
                            //   width: 20,
                            //   decoration: BoxDecoration(
                            //     border: Border.all(),
                            //
                            //   ),
                            // ),
                          ),
                        );
                      }

                  ))

            ],
          ),
        ),),




    );
  }
}
