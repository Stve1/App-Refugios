import 'package:app_perritos/Data/Evento.dart';
import 'package:app_perritos/Screens/Animals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharEvento extends StatelessWidget {
  final Evento evento;

  CharEvento({this.evento});

  @override
  Widget build(BuildContext context) {
    var contentStyle = TextStyle(color: Colors.yellow);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Animals(),
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
                      evento.photoUrl,
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
                    color: evento.colorr),
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
                                style: evento.StylesubTitle,
                              ),
                              Text(
                                evento.name,
                                style: evento.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Ubicación: ',
                                style: evento.StylesubTitle,
                              ),
                              Text(evento.ubication,
                                  style: evento.Stylecontent),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Horario: ',
                                style: evento.StylesubTitle,
                              ),
                              Text(
                                evento.horary,
                                style: evento.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Telefono: ',
                                style: evento.StylesubTitle,
                              ),
                              Text(
                                evento.telefono,
                                style: evento.Stylecontent,
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
