import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Refugio.dart';

class SplashScreen extends StatefulWidget{

  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 5),
            (){
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Image.network(
          'https://dam.smashmexico.com.mx/wp-content/uploads/2018/03/Goku-el-h%C3%A9roe-que-ha-muerto-y-resucitado-en-m%C3%A1s-de-una-ocasi%C3%B3n7.jpg',
          height: 200,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}