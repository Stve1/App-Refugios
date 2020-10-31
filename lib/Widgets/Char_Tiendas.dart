import 'package:app_perritos/Data/Tiendas.dart';
import 'package:app_perritos/Screens/Animals.dart';
import 'package:app_perritos/Screens/Detail_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharTiendas extends StatelessWidget{

  final Tiendas tiendas;

  CharTiendas({this.tiendas});

  @override
  Widget build(BuildContext context) {

    var contentStyle = TextStyle(color: Colors.yellow);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                Animals(),
                  ),
        );
      },

      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:[  Color.fromRGBO(181, 252, 240, 1), Color.fromRGBO(201, 201, 229, 1)])
        ),
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
                      tiendas.photoUrl,
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
                margin: EdgeInsets.symmetric(vertical: 5, horizontal:2),
                decoration: BoxDecoration(borderRadius: new BorderRadius.circular(9), color: tiendas.colorr),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: new BorderRadius.circular(20), color: Colors.black26),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Tiendas- Veterinarias',
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
                                style: tiendas.StylesubTitle,
                              ),
                              Text(
                                tiendas.name,
                                style: tiendas.Stylecontent,
                              ),
                            ],
                          ),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Habilidad: ',
                                style: tiendas.StylesubTitle,
                              ),
                              Text(tiendas.ubication,style: tiendas.Stylecontent),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Edad: ',
                                style: tiendas.StylesubTitle,
                              ),
                              Text(
                                '${tiendas.horary} años',
                                style: tiendas.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Dificultad: ',
                                style: tiendas.StylesubTitle,
                              ),
                              Text(
                                'Dificultad: ${tiendas.Estrellas}',
                                style: tiendas.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Grupo: ',
                                style: tiendas.StylesubTitle,
                              ),
                              Text(
                                tiendas.telefono,
                                style: tiendas.Stylecontent,
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