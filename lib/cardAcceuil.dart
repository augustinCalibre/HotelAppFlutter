// import 'package:decouverte/class_Hotels.dart';
import 'package:decouverte/ecranper.dart';
import 'package:flutter/material.dart';
import 'class_Hotels.dart';
import 'liste_Hotel.dart';

class CardHome extends StatelessWidget {
  
  
  
    
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Container(
      height: 900,
      
      
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tour.length,
          itemBuilder: (BuildContext context, int index) {
            Touriste tours=tour[index];
           

          return GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Ecran(touristes:tours))),
            child:Container(
           height: 900,          
           
         child:Padding(
           padding: EdgeInsets.all(20),
           child: Container(
           height: 600,
           width: 200,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent,
           ),
           child:ClipRRect(
             borderRadius: BorderRadius.circular(20),

             child:Stack(
             children:<Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Container(
                    
                 height: 600,
                 decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
              
           ),
           width: 200,
                 child: Image.asset(tours.img,
               fit:BoxFit.cover,
               ),

               ),),
               
              Positioned(
                bottom: 20,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:20),
                      child:Text(tours.nom,textAlign: TextAlign.justify,style: TextStyle(
                      color:Colors.white,
                      fontSize:20,
                      fontWeight:FontWeight.w100
                    ),),
                    ),
                    
                    SizedBox(height:3,),
                   Padding(
                     padding:EdgeInsets.symmetric(horizontal:20),
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     
                 children: <Widget>[
                   
                   Icon(Icons.local_hotel,color:Colors.white,size: 17,),
                   SizedBox(height:4,),
                   Text(tours.pays,textAlign: TextAlign.justify,style: TextStyle(
                      color:Colors.white,
                      fontSize:12,
                      fontWeight:FontWeight.bold
                    ),),
                   
                 ],
               ) ,) 
                  ]
                ),
              ),
             ]
           ),
           ) 

         ),

         ) ),
            
          );
         },
        ), 

      ),
      
    );
  }
}