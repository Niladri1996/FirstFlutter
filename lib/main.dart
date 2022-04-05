import 'package:flutter/material.dart';

void main()
{
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
  title: "MyApp",
  theme: ThemeData(primarySwatch: Colors.purple),
));



}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _editingController=TextEditingController();
  var mytext="Change Me";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text("My First Flutter App"),
     ) ,
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: SingleChildScrollView(
         child: Card(
           child: Column(
             children: <Widget>[
               Image.asset("assets/images/bgimage.jpg",fit: BoxFit.cover,),
               SizedBox(height: 20,),
               Text(mytext
                 ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                   controller: _editingController,
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                     hintText: "Enter something here",
                     labelText: "Name",
                     border: OutlineInputBorder()
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
     ),
     drawer: Drawer(
       child: ListView(
         children: <Widget>[
           UserAccountsDrawerHeader(accountName: Text("Mr.Niladri Roy"), accountEmail: Text("niladr45@gmail.com"),
             currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1760&q=80"),
             ),

           ),
           ListTile(
             title: Text("Accounts"),
             leading: Icon(Icons.man),
             subtitle: Text("Name"),
             trailing: Icon(Icons.edit),
           ),
           ListTile(
             title: Text("Email"),
             leading: Icon(Icons.email),
             subtitle: Text("abcd@gmail.com"),
             trailing: Icon(Icons.send),
           ),
           ListTile(
             title: Text("Information"),
             leading: Icon(Icons.info),

           ),
           ListTile(
             title: Text("Holiday"),
             leading: Icon(Icons.holiday_village),

           ),

         ],

       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         mytext=_editingController.text;
         setState(() {

         });
       },
       child: Icon(Icons.edit),
     ),

   );
  }
}
