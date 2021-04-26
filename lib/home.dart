import 'package:flutter/material.dart';

import 'cardAcceuil.dart';

class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  final List<IconData> icons = [
    Icons.airplanemode_active,
    Icons.home,
    Icons.camera_alt,
    Icons.directions_bus ];
  final List<String> listattri=["Nouveau","Plus visité","Aimer","Votre Tous","Aimer","Votre Tous"];
  int _selec=0 ;
  int _select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/im6.jpg'),
                  
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.short_text),
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          margin:EdgeInsets.symmetric(horizontal:30),
          height: 140,
          width: MediaQuery.of(context).size.width,
          child: Text(
            'Un Service de Qualité ! \nAllons Plus Loins',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              letterSpacing: 1.0,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        Center(
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:  Color.fromRGBO(236, 236, 236, 0.9),
            ),
            child: Row(children: <Widget>[
              Expanded(
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Que rechercher vous',
                    border: InputBorder.none,
                    hintStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    iconSize: 20.0,
                    onPressed: () {}),
              )
            ]),
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin:EdgeInsets.symmetric(horizontal:30),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: icons.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 70,
                  width: 60,
                  child:GestureDetector(
                    onTap: (){
                      setState(() {
                       _selec=index;
                      print(_selec);
                      });
                         },
                    child:Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:_selec == index
                          ? Theme.of(context).primaryColor
                          : Color.fromRGBO(236, 236, 236, 0.9),
                    ),
                    child: Icon(icons[index],
                      color: _selec == index
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                     
                    ),
                  ),

                  ) ,
                ),
              );
            },
          ),

        ),
        SizedBox(height:25,),

        Container(
          margin:EdgeInsets.symmetric(horizontal:30),
          height: 50,
          
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listattri.length,
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
                  Text(listattri[index]
              ,style: TextStyle(
                color:_select==index ? Theme.of(context).primaryColor:Colors.black87,
                fontSize: 20,
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
              )
              
                ]
                  ,),),
              );
           },
          ),

        ),
        SizedBox(height:15,),
        CardHome(),
      ],


      
      ),
    );
  }
}
