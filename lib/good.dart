import 'package:flutter/material.dart';

class Hi extends StatelessWidget {
  const Hi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(Icons.menu),
        title:Text('welcome'),

      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox( height: 50),
          ElevatedButton(onPressed: (){}, child: const Text("login")),
          Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/abc.png"),
          )
        ],
      ),
    );
    
  }
}


