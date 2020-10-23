import 'package:app_perritos/Screens/Animals.dart';
import 'package:app_perritos/Screens/Eventos.dart';
import 'package:app_perritos/Screens/Veterinarias_Tienda.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Refugio.dart';
import 'Tips.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
var Home = Icon(Icons.home, size: 30, color: Colors.white);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Furry Protected',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),
      ),
      image: new Image.network('https://leonidasrubio.colegiosonline.com/uploads/institucion/escudo.gif'),
      gradientBackground: new LinearGradient(colors: [Colors.deepOrange, Colors.yellow], begin: Alignment.topLeft, end: Alignment.bottomRight),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
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
              Icon(Icons.account_balance,
              ),
                Text('Refugios')
            ],
          ),
            onTap: (){
            },
          ),
         ListTile(
             title: Row(
               children:[
                 Icon(Icons.favorite,
                 ),
                 Text('Animales')
               ],
             ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Animals()),
              );
            }
        ),
            ListTile(
                title: Row(
                  children:[
                    Icon(Icons.calendar_today,
                    ),
                    Text('Eventos')
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Eventos()),
                  );
                }
            ),
            ListTile(
                title: Row(
                  children:[
                    Icon(Icons.lightbulb_outline,
                    ),
                    Text('Tips')
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Tips()),
                  );
                }
            ),
            ListTile(
                title: Row(
                  children:[
                    Icon(Icons.business,
                    ),
                    Text('Veterinarias y tiendas')
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VeterinariasTienda()),
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
    index: 2,
    animationCurve: Curves.bounceInOut,
    items: <Widget>[
    IconButton(icon: Icon(Icons.favorite, size: 30, color: Color.fromRGBO(255, 250, 91, 20)), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Animals()),
      );
    },),
    IconButton(icon: Icon(Icons.calendar_today, size: 30, color: Colors.black), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VeterinariasTienda()),
      );
    },
    ),
      Icon(Icons.account_balance, size: 30, color: Colors.white),
    Icon(Icons.lightbulb_outline, size: 30, color: Colors.green),

    IconButton(icon: Icon(Icons.business, size: 30, color: Colors.white), onPressed: (){
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