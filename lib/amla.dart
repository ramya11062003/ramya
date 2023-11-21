import 'package:flutter/material.dart';

class sweet extends StatelessWidget {
  const sweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title:Center(child: Text("spiderman") ,
        ) ,actions: const [
          Row(
            children: [
              Icon(Icons.search),
              Icon(Icons.camera),
            ],
          )],

        ),

      body:
      Column(
        children: [
          TextFormField(),
          SizedBox(height: 50),
          ElevatedButton(onPressed: (){}, child:Text("login")),
          Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/spmn.png"),
          )

        ],

      ),
        bottomNavigationBar: Text("have a nice day"),

      );



 }
}
