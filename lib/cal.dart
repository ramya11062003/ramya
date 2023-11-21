import 'package:flutter/material.dart';

class sorting extends StatefulWidget {
  const sorting({super.key});

  @override
  State<sorting> createState() => _calState();
}

class _calState extends State<sorting> {
  final cal=TextEditingController();
    List list=[];


  Widget sheetbuild(String result)  {
    return Container(
      height: 100,

      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('$result',style: TextStyle(color: Colors.red),),
                  // ElevatedButton(
                  //   child: const Text('Close BottomSheet'),
                  //   onPressed: () => Navigator.pop(context),
                  // ),
                ],
              ),
            ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: cal,

          ),
          ElevatedButton(onPressed: ()
          {
            setState(() {
              list.add(int.parse(cal.text));
            });
          }, child: Text("ok")),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: list.length,
                itemBuilder:(context,index)
                {
                  return Text(list[index].toString());
                }

            ),
          ),
          ElevatedButton(onPressed: (){

            var a=list.reduce((value, element) => value>element? value:element);
            cal.text=a.toString();

            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) => sheetbuild(cal.text),
            );

          },
              child: Text('max value')),
          ElevatedButton(onPressed: (){
            var a=list.reduce((value, element) => value<element? value:element);
            cal.text=a.toString();

            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) => sheetbuild(cal.text),
            );





          }, child: Text('min value')),
          ElevatedButton(onPressed: ()
          {
            list.sort((a,b)=>a.compareTo(b));
            print(list);
            cal.text=list.toString();

            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) => sheetbuild(cal.text),
            );


          }, child: Text('ascending')),
          ElevatedButton(onPressed: ()
          {
            list.sort((b,a)=>a.compareTo(b));
            print(list);
            cal.text=list.toString();

            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) => sheetbuild(cal.text),
            );

          }, child:Text('descending')
    ),
          ElevatedButton(onPressed: (){
            cal.text = (list.where((item) => item <= 5).toString());

            print(list.where((item) => item <= 5).toList());

          }, child: Text("5")),

          ElevatedButton(onPressed: ()
          {
            cal.text = (list.where((item) => item /=1).toString());

            print( cal.text = (list.where((item) => item /=1).toString()));



          }, child: Text('odd number')),

        ],

      ),



    );
  }
}





