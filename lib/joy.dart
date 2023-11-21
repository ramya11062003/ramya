import 'package:flutter/material.dart';
import 'package:untitled/botnavi1.dart';

class me extends StatelessWidget {
  const me({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/abc.png")),
        title: const Center(child: Text("hey there!"),),
        actions: [const Icon(Icons.cake),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.videogame_asset),
        )],
      ),
          body: Column(
            children: [
              TextFormField(),
              SizedBox(child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const botnavi1()),
                );
              }, child: const Text  ("login"))),
              Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/abc.png"),
              )

            ],


          )

    );
  }
}
