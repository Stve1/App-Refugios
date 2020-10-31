import 'package:app_perritos/Screens/Veterinarias_Tienda.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animals.dart';
import 'Eventos.dart';
import 'main.dart';

class Tips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer:  Drawer(
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
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AfterSplash(),),
                );
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
        backgroundColor: Color.fromRGBO(181, 252, 240, 1),
        color: Colors.lightBlueAccent,
        buttonBackgroundColor: Colors.lightBlueAccent,
        height: 60,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 3,
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
    onPressed: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => AfterSplash(),
    ),
    );
    },
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
    MaterialPageRoute(builder: (context) => VeterinariasTienda()),
    );
    },
    ),
        ],
      ),
    );
  }
}