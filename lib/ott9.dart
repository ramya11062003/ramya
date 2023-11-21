// import 'package:appinio_video_player/appinio_video_player.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/botott.dart';
// import 'package:untitled/video.dart';
// import 'color.dart';
// import 'model.dart';
//
// class ott9 extends StatefulWidget {
//   const ott9({super.key});
//
//   @override
//   State<ott9> createState() => _ott9State();
// }
//
// class _ott9State extends State<ott9> {
//   late FlickManager flickManager;
//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController:
//       VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
//     );
//   }
//
//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         body: Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     stops: [0.1, 0.9],
//                     colors: [d, e]
//                 )
//             ),
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SizedBox(
//                     height: 40,
//                     child: Row(
//                       children: [
//                         GestureDetector(
//                             onTap: (){
//                               setState(() {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => const botott()),
//                                 );
//                               });
//                             },
//                            child: Icon(Icons.arrow_back,color: Colors.white,)),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text('RRR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                     height: 250,
//                     width: 400,
//                   child: FlickVideoPlayer(
//                       flickManager: flickManager
//                     ),),
//
//
//                   Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('2022 . 2h 51m . 5 Languages . U/A 16+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SizedBox(height: 50,width: 200,
//                     child: ElevatedButton
//                       (onPressed: (){}, child: Row(
//                       children: [Icon(Icons.play_arrow,color: Colors.white,),
//                         Text( 'Watch Now',style: TextStyle(color: Colors.white,fontSize: 20),),
//                         //Text( ' Oct 25',style: TextStyle(color: Colors.white,fontSize: 20),)],
//                       ],
//                     ),style: ElevatedButton.styleFrom(
//
//                       backgroundColor: Colors.white.withOpacity(0.5),
//                       shape: RoundedRectangleBorder(),
//                     ),),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text('Blockbuster',style: TextStyle(color: Colors.yellowAccent,fontSize: 20,fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Under the British Raj,two revolutionaries with personal agends forge a friedship, only to find each other on opposing sides.',style: TextStyle(color: Colors.grey,fontSize: 20,)
//                   ,),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container
//                     (
//                     height: 50,
//                     child:ListView.builder(scrollDirection: Axis.horizontal,itemCount: 9,
//
//
//                       itemBuilder: (BuildContext con, index)
//                       {
//                         return Container(
//                             height: 50,
//                             child: Row(
//                               children: [
//                                 Text('Action' ,style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' | Drama |',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' Historical |',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' Conspiracy ',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text('| Power Struggle |',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' Buddy |',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' Period Drama |',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' Alternate History | ',style: TextStyle(fontSize: 20,color: Colors.white),),
//                                 Text(' Bromance | ',style: TextStyle(fontSize: 20,color: Colors.white),),
//
//                             ],
//                             ));},
//                     ),
//                   ),
//                 ),
//                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         Icon(Icons.add,color: Colors.white,),
//                         Text('Watchlist',style: TextStyle(
//                           color: Colors.white
//                         ),),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Icon(Icons.share,color: Colors.white,),
//                         Text('Share',style: TextStyle(
//                             color: Colors.white
//                         ),),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Icon(Icons.download,color: Colors.white,),
//                         Text('Download',style: TextStyle(
//                             color: Colors.white
//                         ),),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text('More Like This',style: TextStyle(
//                         fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25
//                       ),),
//                     ],
//                   ),
//                 ),
//                 Container(
//
//
//                   height:200,
//                   child: ListView.builder(
//
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 10,
//                     itemBuilder: (BuildContext con, index)
//                     {
//                       return Padding(
//                         padding: const EdgeInsets.all(3.0),
//                         child:Container(
//                           height:120,
//                           width: 130,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage(list3[index].image),fit: BoxFit.fill,
//                               ),
//                               borderRadius: BorderRadius.circular(8),
//                               color: Colors.black12
//
//                           ),
//                         ),
//                       );
//
//                     },
//
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text('Trailers & More',style: TextStyle(
//                           fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25
//                       ),),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                     height: 200,
//                     width: 300,
//                     child: Image.network("https://media.tenor.com/wXCvaWTiw1EAAAAC/leo-leo-movie.gif",fit: BoxFit.fill,)),
//                   ],
//                 ),
//
//
//
//
//               ],
//             ),
//           ],
//         ),
//
//
//         ));
//   }}
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class ott9 extends StatefulWidget {
  // SamplePlayer({required Key key}) : super(key: key);

  @override
  _ott9State createState() => _ott9State();
}

class _ott9State extends State<ott9> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: FlickVideoPlayer(
              flickManager: flickManager
          ),
        ),
      ],
    );
  }
}