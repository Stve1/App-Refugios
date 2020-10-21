import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animals.dart';
import 'Refugio.dart';
import 'Tips.dart';
import 'Veterinarias_Tienda.dart';

class Eventos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
    appBar: AppBar(
    backgroundColor: Color.fromRGBO(2238, 178, 237, 1),
    ),
    drawer: Drawer(
    child: ListView(
    children:[
    DrawerHeader(child:
    Image.network('https://upload.wikimedia.org/wikipedia/commons/2/22/Dragon_Ball_Super.png',
    fit: BoxFit.fitWidth,),
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.red, Colors.yellow
        ]
        )
       ),
     ),
    ListTile(
    title: Row(
    children:[
    Icon(Icons.offline_bolt,
    ),
    Text('Refugio')
       ],
     ),
    onTap: (){
      },
    ),
    ListTile(
    title: Row(
    children:[
    Icon(Icons.photo,
    ),
    Text('Animales')
    ],
    ),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Eventos()),
          );
        }
        ),
       ]
      ),
    ),
        backgroundColor: Color.fromRGBO(238, 178, 237, 12),
    bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Color.fromRGBO(238, 178, 237, 210),
    color: Colors.lightBlueAccent,
    buttonBackgroundColor: Colors.lightBlueAccent,
    height: 60,
    animationDuration: Duration(
    milliseconds: 200,
    ),
    index: 0,
    animationCurve: Curves.bounceInOut,
    items: <Widget>[
    IconButton(icon: Icon(Icons.favorite, size: 30, color: Color.fromRGBO(255, 250, 91, 20)), onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Animals()),
    );
    },),
    IconButton(icon: Icon(Icons.chat, size: 30, color: Colors.black), onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => VeterinariasTienda()),
    );
    },
    ),
    IconButton(icon: Icon(Icons.home, size: 30, color: Colors.white), onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Refugio()),
    );
    },
    ),
    IconButton(icon: Icon(Icons.settings, size: 30, color: Colors.green), onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Eventos()),
    );
    },
    ),

    IconButton(icon: Icon(Icons.more_horiz, size: 30, color: Colors.white), onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Tips()),
    );
    },),
    ],

    ),
    );
  }
}