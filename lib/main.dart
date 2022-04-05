import 'package:flutter/material.dart';

void main()
{
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
  title: "MyApp",
));



}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text("My First Flutter App"),
     ) ,
     body: Align(
       alignment: Alignment.centerLeft,
       child: Container(
         color: Colors.black,
         height: 400,
         width: 200,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Container(
               padding: const EdgeInsets.all(12),
               width: 100,
               height: 100,
               color: Colors.green,

             ),
             Container(
               padding: const EdgeInsets.all(12),
               width: 100,
               height: 100,
               color: Colors.yellow,

             ),
             Container(
               padding: const EdgeInsets.all(12),
               width: 100,
               height: 100,
               color: Colors.orange,

             ),
           ],
         ),
       ),
     ),
   );
  }
}
