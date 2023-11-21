import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled/ottlan.dart';
import 'color.dart';

class ott3 extends StatefulWidget {
  const ott3({super.key});


  @override
  State<ott3> createState() => _ott3State();
}

class _ott3State extends State<ott3> {

  @override
  Widget build(BuildContext context) {

    final _formKey1 = GlobalKey<FormState>();
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title:Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: d),),),
      body:Form(
        key: _formKey1,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 400,
              width: 350,
              child: Image.asset("assets/register.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.lightBlue,
                  ),
                  hintText: 'User name',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null|| !RegExp
                    (r"^[a-zA-Z]").hasMatch(value)){
                    return "Enter Correct name";
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
                    MaterialPageRoute(builder: (context) => const ottlan()));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
              }

            },

                child:Text('Login',style: TextStyle(fontSize: 15,color: d),),style: ElevatedButton.styleFrom(fixedSize: Size(100, 50),backgroundColor: f)),


          ],
        ),
      ),







    );
  }
}
//
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'auth.dart';
// import 'formcontainer.dart';
// import 'login.dart';
// import 'package:ottfirebase/toast.dart';
//
// class ott3 extends StatefulWidget {
//   const ott3({super.key});
//
//   @override
//   State<ott3> createState() => _ott3State();
// }
//
// class _ott3State extends State<ott3> {
//   final FirebaseAuthService _auth = FirebaseAuthService();
//
//   TextEditingController _usernameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//
//   bool isSigningUp = false;
//
//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.blue,
//         title: Text('Register',style: TextStyle(color: Colors.white),),
//       ),
//       body:Column(
//         children: [
//           Text(
//             "Sign Up",
//             style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
//           ),
//           Container(
//               height: 80,
//               width: 300,
//               child:FormContainerWidget(
//                 controller: _usernameController,
//                 hintText: "Username",
//                 isPasswordField: false,
//               )
//           ),
//
//           Container(height: 80,
//             width: 300,
//             child: FormContainerWidget(
//
//               controller: _emailController,
//               hintText: "Email",
//               isPasswordField: false,
//             ),
//           ),
//           Container(height: 80,width: 300,
//             child:  FormContainerWidget(
//               controller: _passwordController,
//               hintText: "Password",
//               isPasswordField: true,
//             ),
//           ),
//
//           SizedBox(
//             height: 30,
//           ),
//           GestureDetector(
//             onTap:  (){
//               _signUp();
//
//             },
//             child: Container(
//               width: double.infinity,
//               height: 45,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Center(
//                   child: isSigningUp ? CircularProgressIndicator(color: Colors.white,):Text(
//                     "Sign Up",
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold),
//                   )),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Already have an account?"),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 GestureDetector(
//                     onTap: () {
//                       Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => LoginPage()),
//                               (route) => false);
//                     },
//                     child: Text(
//                       "Login",
//                       style: TextStyle(
//                           color: Colors.blue, fontWeight: FontWeight.bold),
//                     ))
//               ],
//             ),
//           )],
//
//
//       ),
//
//     );
//   }
// }
//
//
// void _signUp() async {
//
//   setState(() {
//     isSigningUp = true;
//   });
//
//   String username = _usernameController.text;
//   String email = _emailController.text;
//   String password = _passwordController.text;
//
//   User? user = await _auth.signUpWithEmailAndPassword(email, password);
//
//   setState(() {
//     isSigningUp = false;
//   });
//   if (user != null) {
//     showToast(message: "User is successfully created");
//     Navigator.pushNamed(context, "/home");
//   } else {
//     showToast(message: "Some error happend");
//   }
// }
//
//
