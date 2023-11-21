import 'package:flutter/material.dart';

class rpt extends StatelessWidget {
  const rpt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.menu),
        title: Center(child: Text("Reports",style: TextStyle(fontSize: 20),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cancel),
          ),
        ],

      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text("All Reports",style: TextStyle(fontSize: 25,decoration: TextDecoration.underline),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text('Report 1')),
                trailing: Icon(Icons.menu),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text('Report 2')),
                trailing: Icon(Icons.menu),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text('Report 3')),
                trailing: Icon(Icons.menu),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Sign Up")),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("help?",style: TextStyle(fontSize: 20,decoration: TextDecoration.underline),),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
