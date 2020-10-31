import 'package:app_perritos/Screens/Animals.dart';
import 'package:app_perritos/Screens/Eventos.dart';
import 'package:app_perritos/Screens/Veterinarias_Tienda.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Tips.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

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
      image: new Image.asset('assets/images/Furry-Protected.gif'),
      gradientBackground: new LinearGradient(colors: [Color.fromRGBO(181, 252, 240, 1), Color.fromRGBO(
          201, 201, 229, 1)], begin: Alignment.topLeft, end: Alignment.bottomRight),
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
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children:[
            DrawerHeader(child:
            Image.asset('assets/images/Furry-Protected.gif',
              fit: BoxFit.fitWidth,),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color.fromRGBO(181, 252, 240, 1), Color.fromRGBO(
                      201, 201, 229, 1),
                      ]
                  )
              ),
            ),
            ListTile(
            title: Row(
              children:[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                child: Icon(Icons.account_balance,
                ),
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
                 Align(
                   alignment: Alignment(-1, -1),
                   child: IconButton(icon: Image.asset('assets/images/Huella.png', height: 25,),
                   onPressed: () {
                   },),
                 ),
                 Text('Animales'),
           ],
             ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> Animals()),
              );
            }
        ),
            ListTile(
                title: Row(
                  children:[
                    Padding(
                      child: Icon(Icons.calendar_today),padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                      child: Icon(Icons.lightbulb_outline,
                      ),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                      child: Icon(Icons.business,
                      ),
                    ),
                    Text('Veterinarias y tiendas')
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VeterinariasTienda()),
                  );
                }
            ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
            child: Text('Con el patrocinio de:', style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [
                        Colors.lightBlueAccent, Color.fromRGBO(181, 252, 240, 1)
                      ]
                      ),
                      ),
                        child: Image.asset('assets/images/Ibacrea.png', height: 40,)),
                  ),
                  Image.asset('assets/images/Devshouse.jpg', height: 40,)
                ]
            ),
          ),
        ),
      ],
      ),
      ),
      backgroundColor: Color.fromRGBO(181, 252, 240, 1),
      bottomNavigationBar: CurvedNavigationBar(
    backgroundColor:  Color.fromRGBO(181, 252, 240, 1),
    color: Colors.lightBlueAccent,
    buttonBackgroundColor: Colors.lightBlueAccent,
    height: 60,
    animationDuration: Duration(
    milliseconds: 200,
    ),
    index: 2,
    animationCurve: Curves.bounceInOut,
    items: <Widget>[
    IconButton(icon: Image.asset('assets/images/Huella.png', height: 30, color: Color.fromRGBO(255, 250, 91, 20)), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Animals()),
      );
    },),
    IconButton(icon: Icon(Icons.calendar_today, size: 30, color: Colors.black), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Eventos()),
      );
    },
    ),

      IconButton(icon: Icon(Icons.account_balance, size: 30, color: Colors.white),
      ),

    IconButton(icon: Icon(Icons.lightbulb_outline, size: 30, color: Colors.black,), onPressed: (){
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => Tips())
      );
    },
    ),

    IconButton(icon: Icon(Icons.business, size: 30, color: Color.fromRGBO(255, 250, 91, 20)), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Tips()),
      );
      },
    ),
    ],
    ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 23,
              width: 23,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}