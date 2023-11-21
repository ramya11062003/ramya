import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/model.dart';

import 'color.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController ctrl=TextEditingController();
  String num1 = "";
  String num2 ="";
  String optr= "";
  String res="";
  bool clk = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      body: Column(

        children: [SizedBox(height: 150,),
          TextFormField(
            controller: ctrl,

            style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
            ),
            textAlign: TextAlign.end,

          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: () {
                    ctrl.clear();
                    num1="";
                    num2="";
                    clk=false;

                  }, child: Text('Clr',style: TextStyle(fontSize: 30,color: Colors.black),),),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){

                    ctrl.text = "/";
                    optr = "/";
                    clk =true;

                  }, child: Text('/',style: TextStyle(fontSize: 30,color: Colors.black))),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){
                    ctrl.text = "*";
                    optr = "*";
                    clk =true;
                  }, child: Text('*',style: TextStyle(fontSize: 40,color: Colors.black))),
                ),
                SizedBox(height: 60,
                    child: ElevatedButton(onPressed: (){


                      ctrl.text=ctrl.text.substring(0,ctrl.text.length-1);
                      num1=ctrl.text;


                    }, child: Text('X',style: TextStyle(fontSize: 30,color: Colors.black)))),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){
                    {
                      if(clk)
                      {
                        num2 += "7";
                        ctrl.text = num2;
                      }
                      else
                      {
                        num1+="7";
                        ctrl.text=num1;
                      }
                    }
                  }, child: Text('7',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){  {
                    if(clk)
                    {
                      num2 += "8";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="8";
                      ctrl.text=num1;
                    }
                  }}, child: Text('8',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){  {
                    if(clk)
                    {
                      num2 += "9";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="9";
                      ctrl.text=num1;
                    }
                  }}, child: Text('9',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){
                    ctrl.text = "-";
                    optr = "-";
                    clk =true;
                  }, child: Text('-',style: TextStyle(fontSize: 30,color: Colors.black))),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){ {
                    if(clk)
                    {
                      num2 += "4";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="4";
                      ctrl.text=num1;
                    }
                  }}, child: Text('4',style: TextStyle(fontSize: 30,color: Colors.black,)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){  {
                    if(clk)
                    {
                      num2 += "5";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="5";
                      ctrl.text=num1;
                    }
                  }}, child: Text('5',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){  {
                    if(clk)
                    {
                      num2 += "6";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="6";
                      ctrl.text=num1;
                    }
                  }}, child: Text('6',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: ()
                  {
                    ctrl.text = "+";
                  optr = "+";
                  clk =true;
                  }, child: Text('+',style: TextStyle(fontSize: 30,color: Colors.black))),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: ()
                  {
                    {
                      if(clk)
                      {
                        num2 += "1";
                        ctrl.text = num2;
                      }
                      else
                      {
                        num1+="1";
                        ctrl.text=num1;
                      }
                    }
                  }, child: Text('1',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){  {
                    if(clk)
                    {
                      num2 += "2";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="2";
                      ctrl.text=num1;
                    }
                  }}, child: Text('2',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){  {
                    if(clk)
                    {
                      num2 += "3";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1+="3";
                      ctrl.text=num1;
                    }
                  }}, child: Text('3',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){

                     ctrl.text='√';
                    optr="√";
                    clk=true;
                  }, child: Text('√',style: TextStyle(fontSize: 30,color: Colors.black)),
                    ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,

                  child: ElevatedButton(onPressed: (){
                    ctrl.text = "%";
                    optr = "%";
                    clk =true;
                  }, child: Text('%',style: TextStyle(fontSize: 30,color: Colors.black),)),
                ),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      num2 += "0";
                      ctrl.text = num2;
                    }
                    else
                    {
                      num1 += "0";
                      ctrl.text = num1;
                    }
                  }, child: Text('0',style: TextStyle(fontSize: 30,color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: f)),
                ),
                SizedBox(height:60,
                    child: ElevatedButton(onPressed: (){
                      ctrl.text = "^";
                      optr = "^";
                      clk =true;
                    }, child: Text('^',style: TextStyle(fontSize: 30,color: Colors.black)),
                    )),
                SizedBox(height: 60,
                  child: ElevatedButton(onPressed: (){
                    if(optr=="+")
                    {
                      double a = double.parse(num1);
                      double b = double.parse(num2);
                      double res = a+b;
                      ctrl.text = res.toString();
                    }

                    if(optr=="-")
                    {
                      int a = int.parse(num1);
                      int b = int.parse(num2);
                      int res = a-b;
                      ctrl.text = res.toString();
                    }

                    if(optr=="*")
                    {
                      int a = int.parse(num1);
                      int b = int.parse(num2);
                      int res = a*b;
                      ctrl.text = res.toString();
                    }
                    if(optr=="/")
                    {
                      int a = int.parse(num1);
                      int b = int.parse(num2);
                      double res = a/b;
                      ctrl.text = res.toString();
                    }
                    if(optr=="%")
                    {
                      double a = double.parse(num1);
                      double b = double.parse(num2);
                      double res = (a*b)/100;
                      ctrl.text = res.toString();
                    }
                    if(optr=="^")
                    {
                      double a =double.parse(num1);
                      double b = double.parse(num2);
                      num res=pow(a, b);
                      ctrl.text = res.toString();
                    }
                    if(optr=="√")
                      {
                        double a=double.parse(num2);
                        double res=sqrt(a);
                        ctrl.text=res.toString();
                        
                      }

                    num1=ctrl.text;
                    num2="";
                    optr="";
                    clk=false;
                    }, child: Text('=',style: TextStyle(fontSize: 30,color: Colors.black)),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                 if(clk){
                   num2+=".";
                   ctrl.text=num2;

                 }
                 else
                 {
                   num1+=".";
                   ctrl.text=num1;
                 }
    }, child: Text('.',style:  TextStyle(fontSize: 30,color: Colors.black),),style: ElevatedButton.styleFrom(fixedSize: Size(75,60),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
