import 'package:app_perritos/Screens/Animals.dart';
import 'package:app_perritos/Screens/Eventos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharEvento extends StatelessWidget{

  final Evento evento;

  CharEvento({this.evento});

  @override
  Widget build(BuildContext context){


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
                                  'Ubicación: ',
                                  style: tiendas.StylesubTitle,
                                ),
                                Text(tiendas.ubication,style: tiendas.Stylecontent),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Horario: ',
                                  style: tiendas.StylesubTitle,
                                ),
                                Text(
                                  tiendas.horary,
                                  style: tiendas.Stylecontent,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Telefono: ',
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

  }
}