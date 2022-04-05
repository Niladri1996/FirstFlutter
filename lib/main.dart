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
     body: Container(
       child: Center(child: Text("Hello World")),
     ),
   );
  }
}
