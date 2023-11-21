import 'package:flutter/material.dart';

class email extends StatefulWidget {
  const email({super.key});

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email validation") ,
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,

        child: ListView(
          children: [
            Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter EmailId',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if(value==null|| !RegExp
                        (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return "Enter Correct Email Address";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter Phone Number',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if(value==null|| !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)){
                        //  r'^[0-9]{10}$' pattern plain match number with length 10
                        return "Enter Correct Phone Number";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
      decoration: InputDecoration(
      labelText: 'password',
      border: OutlineInputBorder(),
      ),
            validator: (value){
              if(value==null|| value.length<4){
                return "Enter correct password";
              }else{
                return null;
              }
            },


      ),
    ),

                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
                  }

                }, child: Text("submit"))
              ],

            ),
          ],
        ),
      ),
    );
  }
}
