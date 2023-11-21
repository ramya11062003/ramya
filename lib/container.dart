import 'package:flutter/material.dart';

class cont extends StatefulWidget {
  const cont({super.key});

  @override
  State<cont> createState() => _container1State();
}

class _container1State extends State<cont> {
  bool clk=false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [


            ElevatedButton(onPressed: ()
            {
              setState(() {

                clk =  !clk;

              });

            }, child: Text('click')),


            Visibility(
                  visible: clk,
                  child: Container(
                    height:100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                  ),
                ),







          ],
        ),
      )
    );
  }
}
