import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {



 var items=['1','2','3','4'];
 
  String dropdownValue = '1';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.cyanAccent,

  title: SizedBox(
    height: 50,
    child: Container(
      height: 50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Amazon.in',
          suffixIcon: Container(
            height: 10,
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.qr_code_scanner),
                Icon(Icons.mic),
              ],
            ),
          )
        ),

      ),


    ),
  )
),

      body:SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
        children: [
          Row(
            children: [

              Text(" visit the amazon brand -sy",style: TextStyle(color: Colors.lightBlue,fontSize: 16)),


              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(

             height: 15,
             width: 15,
             child: RatingBar.builder(
                 initialRating: 3,
                 minRating: 1,
                 direction: Axis.vertical,
                 allowHalfRating: true,
                 itemCount: 5,
                 itemSize: 15,

                 itemBuilder: (context, _)=>Icon(
                   Icons.star_border_purple500_outlined,weight: 100,
                   color: Colors.yellow,
                 ),
                 onRatingUpdate: (rating){
                   print(rating);
                 },
           ),

                ),
              ) ,
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text("693",style: TextStyle(fontSize: 20)),
              ),



            ],
          ),





          Container(
            height: 30,
            width: 400,
            child: Text(" Amazon choice highlights highly rated,well-priced products available to ship immediately.",style: TextStyle(fontSize: 15),
            overflow: TextOverflow.ellipsis,),

          ),


    Stack(
      children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                      height: 300,
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
                  itemCount:7,
                  itemBuilder: (BuildContext context, int index, int )
                  {
                    return Container(
                       height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/shoe.jpeg"),fit: BoxFit.fill,
                          )
                      ),
                    );


                  },




                ),
        Positioned(child: Icon(Icons.share_outlined,size: 30),top:10,right: 10),

        Positioned(child: Icon(Icons.favorite_border,size: 30),bottom: 10,left: 10,)
              ],
    ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 15,
                  width: 100,
                  color: Colors.red,
                    child: Center(child: Text("Limited time deal",style: TextStyle(fontSize: 10,color: Colors.white)))),
              ),
            ],
          ),

          Row(
            children: [
              Text('-77%',style: TextStyle(fontSize: 30,color: Colors.red),),
              Icon(Icons.currency_rupee),
              Text('929',style: TextStyle(fontSize: 30),),
            ],
          ),


            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Text('M.R.P.:',style: TextStyle(fontSize: 15),),
                  Text('₹3,999',style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20),),
                ],
              ),
            ),





          Row(
            children: [
              Text(" inclusive of all taxes",style: TextStyle(fontSize: 18),),
            ],
          ),


          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan( text: ' FREE delivery' , style: TextStyle(color: Colors.cyan,fontSize: 15,),),
                  TextSpan(text: ' Monday,25 September.',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15,),),

                ]
              )),
            ],
          ),

          Row(
            children: [
              Text(' Details',style: TextStyle(fontSize: 15,color: Colors.cyan),),
            ],
          ),

          Row(
            children: [
              Text( ' Or fastest delivery ', style: TextStyle(fontSize: 15,)),
      Text('Tomorrow, 22 ',style:TextStyle(
        fontWeight: FontWeight.bold,fontSize: 15,
      ),)



            ],
          ),



          Row(
            children: [
              RichText(text: TextSpan(
                  text: ' September. ',
                  style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold,
                  ),

                  children: [
                    TextSpan(
                      text: 'Order within',style:TextStyle(
                     fontSize: 15,
                    ),
                    ),

                    TextSpan(
                      text: ' 7 hrs 3 mins.',style:TextStyle(
                      color: Colors.green,fontSize: 15,
                    ),

                    ),



                  ]
              )),
            ],
          ),

      Row(
        children: [
          RichText(text: TextSpan(
            text: ' Details',
            style: TextStyle(
              fontSize: 15,color: Colors.cyan,
            ),)),
        ],
      ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.gps_fixed),
              ),
              Text('Deliver to You-Coimbatore 641018',style: TextStyle(fontSize: 15,color: Colors.cyan),)

            ],
          ),

          Row(
            children: [
              Text(
                ' In stock',style: TextStyle(fontSize: 20,color: Colors.green),),
            ],
          ),


         // Container(
         //   child: Row(
         //     children: [
         //       Text("Qty:"),
         //       DropdownMenu<String>(
         //         initialSelection: list.first,
         //         onSelected: (String? value) {
         //           // This is called when the user selects an item.
         //           setState(() {
         //             dropdownValue = value!;
         //           });
         //         },
         //         dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
         //           return DropdownMenuEntry<String>(value: value, label: value);
         //         }).toList(),
         //       ),
         //     ],
         //   ),
         // ),,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Card(elevation: 20,
                  child: Container(

                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      children: [
                        Text("  Qty : ",style: TextStyle(fontSize: 15),),
                        DropdownButton(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,style: TextStyle(fontSize: 15),),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),



















          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height:55,
              width: 360,
              child: ElevatedButton(onPressed: (){}, child: Text('Add to cart',style:TextStyle(color: Colors.black,fontSize:18),
              ),style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),)),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height:55 ,
                width: 360,
                child: ElevatedButton(onPressed: (){}, child: Text('Buy Now',style:TextStyle(color: Colors.black,fontSize: 18),
                ),style: ElevatedButton.styleFrom( padding: const EdgeInsets.all(8.0),
                    backgroundColor: Colors.orange),)),
          ),


          Row(
            children: [
              Icon(Icons.lock),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Secure transaction',style: TextStyle(color: Colors.cyan,fontSize: 16),),
              ),
            ],
          ),
















    ],
















          ),
    ),
    );
  }
}
