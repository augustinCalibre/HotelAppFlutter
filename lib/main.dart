import 'package:flutter/material.dart';
import 'ecran_accueil.dart';




void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yo-Tchat',
      theme: ThemeData(
        primaryColor:Colors.redAccent,
        accentColor:Color.fromRGBO(255, 255, 220, 0.6) ,
      ),
      home: Home (),
      
       );
  }
}



