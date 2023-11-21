import 'package:flutter/material.dart';

class textediting extends StatefulWidget {
  const textediting({super.key});

  @override
  State<textediting> createState() => _texteditingState();
}

class _texteditingState extends State<textediting> {
  final text1=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller:text1,textAlign: TextAlign.end),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              text1.text='10';
            }, child: Text('10')),
          ),
        ],
      ),
    );
  }
}
