import 'package:flutter/material.dart';
import 'home.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        
        child: Stack(
        children: <Widget>[
             Container(
          height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
              
              child: Image.asset('assets/images/im7.jpg',
              fit: BoxFit.cover,)
            
            ), 
                    
            Positioned(
              bottom: MediaQuery.of(context).size.height*0.17,
              right:MediaQuery.of(context).size.width*0.17 ,
              left:MediaQuery.of(context).size.width*0.17,

              child:GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Acceuil())),
                 
                child: Card(
                  elevation: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.0),
                                  
                               
                
              child: Container(
                height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color:Theme.of(context).primaryColor,
                ),
                
                child:Center(
                  

                child:Text(
                '\n Connection \n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight:FontWeight.w400,
                  letterSpacing: 1.2,
                  color:Colors.white,
                  fontSize: 15,
                ),
            ),),
            ),
            ),
            ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height*0.39,
              
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: 10),
                
                child:Text(
                  
                'Passe de Merveilleux Moment \n avec Yo-Cons!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight:FontWeight.w700,
                  letterSpacing: 1.0,
                  color:Colors.white,
                  fontSize:25,
                  
                ),
            ),),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height*0.12,
              right:MediaQuery.of(context).size.width*0.12,
              left:MediaQuery.of(context).size.width*0.12,
              child: Text(
                'Créer un compte',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  color:Colors.white,
                  fontSize:17,
                  fontStyle:FontStyle.italic, 
                  decorationStyle: TextDecorationStyle.double,
                  
                ),
            ),
            ),
  ],
      ),
      )
     

    );
  }
}


