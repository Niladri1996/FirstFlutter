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
       child: Center(
         child: Container(
           padding: const EdgeInsets.all(12),
           alignment: Alignment.center,
           width: 150,
           height: 150,
           child: Text("My Name Is Niladri",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
           decoration: BoxDecoration(
             color: Colors.lightGreen,
             gradient: LinearGradient(colors: [Colors.red,
             Colors.amber]),
             // shape:BoxShape.circle
             borderRadius: BorderRadius.circular(10),
             boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 11,offset: Offset(2.0,5.0))]
           ),
         ),
       ),
     ),
   );
  }
}
