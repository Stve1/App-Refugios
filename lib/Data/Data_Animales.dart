import 'package:app_perritos/Data/Animales.dart';
import 'package:app_perritos/Widgets/Char_Animals.dart';
import 'package:flutter/material.dart';

class DataAnimales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Animal1 = Animales(
      name: 'Bruno',
      photoUr:
          'https://lh3.googleusercontent.com/p/AF1QipNgK36JZkj9zMPSV3NUGjjmK-5TOQsoXFKV-OnA=s1600-w400',
      edad: '5 meses',
      raza: 'Criollo',
      Refugio: 'Municipal',
      colorr: Colors.green,
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
      description:
          'Su nombre es bruno, tiene una edad de 5 meses, es de raza criolla, es un cachorro, de muy nuenos cuidados, juicioso, y bien educado',
    );
    var Animal2 = Animales(
      name: 'Bruno',
      photoUr:
          'https://lh3.googleusercontent.com/p/AF1QipNgK36JZkj9zMPSV3NUGjjmK-5TOQsoXFKV-OnA=s1600-w400',
      edad: '5 meses',
      raza: 'Criollo',
      Refugio: 'Municipal',
      colorr: Colors.green,
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
      description:
          'Su nombre es bruno, tiene una edad de 5 meses, es de raza criolla, es un cachorro, de muy nuenos cuidados, juicioso, y bien educado',
    );
    var Animal3 = Animales(
      name: 'Bruno',
      photoUr:
          'https://lh3.googleusercontent.com/p/AF1QipNgK36JZkj9zMPSV3NUGjjmK-5TOQsoXFKV-OnA=s1600-w400',
      edad: '5 meses',
      raza: 'Criollo',
      Refugio: 'Municipal',
      colorr: Colors.green,
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
      description:
          'Su nombre es bruno, tiene una edad de 5 meses, es de raza criolla, es un cachorro, de muy nuenos cuidados, juicioso, y bien educado',
    );
    var Animal4 = Animales(
      name: 'Bruno',
      photoUr:
          'https://lh3.googleusercontent.com/p/AF1QipNgK36JZkj9zMPSV3NUGjjmK-5TOQsoXFKV-OnA=s1600-w400',
      edad: '5 meses',
      raza: 'Criollo',
      Refugio: 'Municipal',
      colorr: Colors.green,
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
      description:
          'Su nombre es bruno, tiene una edad de 5 meses, es de raza criolla, es un cachorro, de muy nuenos cuidados, juicioso, y bien educado',
    );
    var Animal5 = Animales(
      name: 'Bruno',
      photoUr:
          'https://lh3.googleusercontent.com/p/AF1QipNgK36JZkj9zMPSV3NUGjjmK-5TOQsoXFKV-OnA=s1600-w400',
      edad: '5 meses',
      raza: 'Criollo',
      Refugio: 'Municipal',
      colorr: Colors.green,
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
      description:
          'Su nombre es bruno, tiene una edad de 5 meses, es de raza criolla, es un cachorro, de muy nuenos cuidados, juicioso, y bien educado',
    );

    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          CharAnimals(
            animales: Animal1,
          ),
          CharAnimals(
            animales: Animal2,
          ),
          CharAnimals(
            animales: Animal3,
          ),
          CharAnimals(
            animales: Animal4,
          ),
          CharAnimals(
            animales: Animal5,
          ),
        ],
      ),
    );
  }
}
