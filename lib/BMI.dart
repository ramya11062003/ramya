import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightGreenAccent,
      appBar:  AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('BMI Calculator',style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              
              Text("Height",style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 300,
                  child: TextFormField(controller: t1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Text("Weight",style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 300,
                  child: TextFormField(controller: t2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Text("Result",style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 300,
                  child: TextFormField(controller: t3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()
                {
                  double a=double.parse(t1.text);
                  double b=double.parse(t2.text);
                  double c=((b*100*100)/ (a*a));
                  t3.text=c.toString();

                  if (c <= 18.5) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                                "Your are Too Thin \n You BMI is: ${c.toStringAsFixed(2)}"),
                            backgroundColor: Colors.blue,
                          );
                        });
                  } else if ((18.6 <= c) & (c <= 25)) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                                "Your are Normal \n You BMI is: ${c.toStringAsFixed(2)}"),
                            backgroundColor: Colors.redAccent,
                          );
                        });
                  }
                  else if ((25.1 <= c) & (c <= 39.9))

                  {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                                "Your are Over Weight \n You BMI is:${c.toStringAsFixed(2)}"),
                            backgroundColor: Colors.redAccent,
                          );
                        });
                  }
                  else

                  {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                                "Your are Too obese \n You BMI is:${c.toStringAsFixed(2)}"),
                            backgroundColor: Colors.redAccent,
                          );
                        });
                  }

                  // if(c <= 18.5)
                  // {
                  //   showDialog(
                  //       context: context,
                  //       builder:( BuildContext context )
                  //   {
                  //     return AlertDialog(
                  //       title: Text("Your are Too Thin \n Your BMI is:${c.toString()}"),
                  //       backgroundColor: Colors.blue,
                  //
                  //     );
                  //   }
                  //   );
                  //
                  // }
                  // else if ((18.6 <= c) & (c <= 25))
                  // {
                  //   showDialog(context: context,
                  //       builder:( BuildContext context)
                  //   {
                  //     return AlertDialog(
                  //       title: Text("You are normal \n Your BMI is:${c.toString()}"),
                  //       backgroundColor: Colors.blue,
                  //     );
                  //   }
                  //   );
                  //
                  //
                  // }
                  //
                  // else if((25.1 <= c) & (c <= 39.9))
                  // {
                  //   showDialog(context: context,
                  //       builder:( BuildContext context)
                  //       {
                  //         return AlertDialog(
                  //           title: Text("You are over weight \n Your BMI is:${c.toString()}"),
                  //           backgroundColor: Colors.blue,
                  //         );
                  //       }
                  //   );
                  //
                  //
                  // }
                  //
                  // else()
                  //   {
                  //   showDialog(context: context, builder:(BuildContext context)
                  //     {
                  //       return AlertDialog(
                  //         title: Text("Your are Too obese \n You BMI is:${c.toString()}"),
                  //         backgroundColor: Colors.blue,
                  //       );
                  //
                  //     }
                  //   );
                  //   };




                }, child: Text('Result')),
                ElevatedButton(onPressed: ()
                {
                  t1.clear();
                  t2.clear();
                  t3.clear();
                }, child: Text('clear')),




              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 400,
                  width: 380,
                  child: Image.asset("assets/bmi.gif"),
                ),
              ),
            ],
          ),



        ],
      ),
    );
  }
}
