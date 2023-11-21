import 'package:flutter/material.dart';

class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (val)
              {
                if(val==null || val.isEmpty)
                  {
                    return 'pls ckh ';
                  }
              },
            ),

            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
                }

            }, child: Text("ok"))
          ],
        ),
      ),
    );
  }
}



/// reg exp