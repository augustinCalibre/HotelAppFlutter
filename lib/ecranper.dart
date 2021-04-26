import 'package:decouverte/class_Hotels.dart';

import 'package:flutter/material.dart';

class Ecran extends StatefulWidget {
  final Touriste touristes;

  Ecran({this.touristes});
  
  @override
  _EcranState createState() => _EcranState();
}

class _EcranState extends State<Ecran> {
  List<String>menu=["A Propos","Autre Service","Préferer"];
  int _select=0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: <Widget>[
        Container(
          height:30,
         
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: <Widget>[
            IconButton(
               onPressed:(){
                 Navigator.pop(context);
               } ,
              icon:Icon(Icons.navigate_before),
              iconSize: 20,
            
           
            ),
            Icon(Icons.short_text,size:30,),
          ],
          ),
        ),
        Padding(
        padding: EdgeInsets.all(20),
        child: Text(widget.touristes.nom,style:TextStyle(fontSize:20,fontWeight: FontWeight.w900)),

        ),
        Container(
          height: 250,
          width: 250,
         
          child:Center(child:Stack(
            children: <Widget>[
            Positioned(
              top:90 ,
                
                child:Container(
                height:160,
                width:250,
                decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.white,
                boxShadow:[
                  BoxShadow(blurRadius: 10.0,
                  color: Colors.blueGrey,
                  offset: Offset(
                    5.0,5.0),
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: <Widget>[
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                    Text(' ${widget.touristes.pays}',textAlign: TextAlign.start,),
                    Row(
                     
                      children: <Widget>[
                      
                      Text(' ${widget.touristes.qualite}',textAlign: TextAlign.end,),
                    Icon(Icons.star,color: Theme.of(context).primaryColor),
                    ],)
                    
                  ],)
                  
                 
                  
                ],
              ),
              
              
              ),
              ),
              
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child:Container(
                height: 250,
                width:200,
                decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:Image.asset(widget.touristes.img,fit:BoxFit.cover),),
              
              )),
            ],
          ) ,
          
          )
      
         ),
         SizedBox(
           height: 30,
         ),
         Padding(
           padding:EdgeInsets.symmetric(horizontal:30),
           child:Container(
             margin:EdgeInsets.symmetric(horizontal:30),

          height: 50,
          
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  _select=index;
                });
              },

              child:Padding(
                padding:EdgeInsets.symmetric(horizontal:20),
                child:Column(children:<Widget>[
                  Text(menu[index]
              ,style: TextStyle(
                color:_select==index ? Theme.of(context).primaryColor:Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              ),
              _select!=index ? SizedBox.shrink():Container(
                height:10,
                width:10,
                
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(30),
                  color:Theme.of(context).primaryColor,
                ),
              ),

              
              
                ]
                  ,),),
              );
           },
          ),

        ),),
        Container(
                height:200,
                width: 600,
                margin:EdgeInsets.symmetric(horizontal:30),

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white24,

                ),
                
                child: Padding(
                  
                  padding:EdgeInsets.symmetric(horizontal:30),
                  child: Text(widget.touristes.about,style:TextStyle(fontSize:20,fontWeight: FontWeight.w300,color:Colors.black) ,
                  overflow: TextOverflow.fade)
                  
                  ),
                
              ),
        Expanded(
          child:Container(

          height:200,
                width: 600,
                
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal:20), 
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                 GestureDetector(

                   child:Container(
                    height:50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    border:Border.all(color:Theme.of(context).primaryColor),
                    color:Colors.white,
                  ),
                  child: Center(child:Text('${widget.touristes.prix} Fcfa',style:TextStyle(color: Theme.of(context).primaryColor,fontSize:15,fontWeight: FontWeight.bold))),
                  ),
                  ),

                  GestureDetector(

                   child:Container(
                  height:50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    
                    color:Theme.of(context).primaryColor,
                  ),
                  child: Center(child:Text('Reserver',style:TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold))),
                  ),
                  ) , 
                  ],),),

        ),),
        
              
          ],
          ),
        
        

    );
  }
}