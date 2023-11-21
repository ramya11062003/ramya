import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white54,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 500,
              backgroundColor: Colors.white38,
              leading: Icon(Icons.lock),
              title: Text('Crazy_girl_im_only',style: TextStyle(fontWeight: FontWeight.bold),),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_box_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                ),
              ],
              pinned: true,
              centerTitle: false,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60,left: 20),
                          child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/insta.jpg"),fit: BoxFit.fill,

                            )
                      ),

                    ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Column(
                            children: [
                              Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text('Posts'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Column(
                            children: [
                              Text('119',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text('Followers'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Column(
                            children: [
                              Text('107',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text('Following'),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('Its_me_Tamil',style: TextStyle(fontSize: 16)),
                          Icon(Icons.favorite_border,color: Colors.pink,)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('Just a little bit of imperfect',style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text("Edit profile",style: TextStyle(color: Colors.black),)),
                          ElevatedButton(onPressed: (){}, child:  Text("Share profile",style: TextStyle(color: Colors.black))),
                          ElevatedButton(onPressed: (){}, child:Icon(Icons.person_add,color: Colors.black,)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Story highlights',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      height: 120,
                        child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext con, index){
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                height: 80,
                                width: 80,
          decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
          image: AssetImage("assets/cute.jpeg"),
          )
          )


                                ),
                              ),
                              Icon(Icons.favorite,color: Colors.red,),
                            ],
                          );
          }
                        ),
                      ),
                    ),



                      ],
                    ),
                  ),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.add_a_photo,)),
                  Tab(icon: Icon(Icons.account_box),),
                  Tab(icon: Icon(Icons.add_alarm_outlined),),
                ],
              )
            ),];},
          body: TabBarView(children: [
            Container(
              height: 700,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2/2,

                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                  ),
                  itemCount: 12,
                  itemBuilder:( BuildContext ctx ,index)
                {
                return Card(elevation: 50,
                  child: Container(
                    height: 60,
                   // width: 200,
                    //color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/square.png'),fit:BoxFit.fill,
                      )
                    ),
                  ),
                );
            }
            ),
            ),
            Container(
              height: 700,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2/2,

                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                  ),
                  itemCount: 12,
                  itemBuilder:( BuildContext ctx ,index)
                {
                return Card(elevation: 50,
                  child: Container(
                    height: 60,
                   // width: 200,
                    //color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/cat2.jpg'),fit:BoxFit.fill,
                      )
                    ),
                  ),
                );
            }
            ),
            ),
            Container(
              height: 700,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2/2,

                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                  ),
                  itemCount: 12,
                  itemBuilder:( BuildContext ctx ,index)
                {
                return Card(elevation: 50,
                  child: Container(
                    height: 60,
                   // width: 200,
                    //color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),fit:BoxFit.fill,
                      )
                    ),
                  ),
                );
            }
            ),
            ),


          ],),

              ),




            ),);

          }}













































          