import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled/ott3.dart';
import 'color.dart';

class ott2 extends StatefulWidget {
  const ott2({super.key});
  @override
  State<ott2> createState() => _ott2State();
}
class _ott2State extends State<ott2> {
  @override
  Widget build(BuildContext context) {
    final _formKey1 = GlobalKey<FormState>();
    return  Scaffold(

      body:Form(
        key: _formKey1,
        child: Column(
          children: [
            Container(
              height:850,
              width: 401,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/movie2.jpg",),fit: BoxFit.fill,
                )
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),

                            child: Container(
                                 color: Colors.white.withOpacity(0.5),
                                height: 400,
                                width: 250,



                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("LOGIN",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: d),),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.lightBlue,
                                        ),
                                        hintText: 'Email id',
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
                                        prefixIcon: Icon(
                                          Icons.password,
                                          color: Colors.lightBlue,
                                        ),
                                        hintText: 'Password ',
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value){
                                        if(value==null|| value.length<10){
                                          return "Enter correct password";
                                        }else{
                                          return null;
                                        }
                                      },


                                    ),
                                  ),

                                  ElevatedButton(onPressed: ()
                                  {
                                     if(_formKey1.currentState!.validate())
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const ott3()));
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
                                    }

                                  },

                                      child:Text('Login',style: TextStyle(fontSize: 15,color: d),),style: ElevatedButton.styleFrom(fixedSize: Size(100, 50),backgroundColor: f)),
                                  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ott3()),
                                          );
                                        });
                                      },
                                      child: Text("Signup",style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),)),

                                ],
                              ),
                            ),
                          ),],

                ),
              ),
                  ),

              ),
    ],),
      ),
    );
  }
}
