import 'package:app_perritos/Data/Animales.dart';
import 'package:app_perritos/Screens/Animals.dart';
import 'package:app_perritos/Screens/Detail_Animals_Screen.dart';
import 'package:flutter/material.dart';

class CharAnimals extends StatelessWidget {
  final Animales animales;

  CharAnimals({this.animales});

  @override
  Widget build(BuildContext context) {
    var contentStyle = TextStyle(color: Colors.yellow);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsAnimalScreen(
              animals: animales,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(181, 252, 240, 1),
          Color.fromRGBO(201, 201, 229, 1)
        ])),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 30,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Image.network(
                      animales.photoUr,
                      fit: BoxFit.fitWidth,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 60,
              child: Container(
                height: 130,
                width: 300,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(9),
                    color: animales.colorr),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(20),
                          color: Colors.black26),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '¡¡¡¡Refugios!!!!',
                          style: contentStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Nombre: ',
                                style: animales.StylesubTitle,
                              ),
                              Text(
                                animales.name,
                                style: animales.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Ubicación: ',
                                style: animales.StylesubTitle,
                              ),
                              Text(animales.edad, style: animales.Stylecontent),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Horario: ',
                                style: animales.StylesubTitle,
                              ),
                              Text(
                                animales.raza,
                                style: animales.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Telefono: ',
                                style: animales.StylesubTitle,
                              ),
                              Text(
                                animales.Refugio,
                                style: animales.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Telefono: ',
                                style: animales.StylesubTitle,
                              ),
                              Text(
                                animales.Refugio,
                                style: animales.Stylecontent,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
