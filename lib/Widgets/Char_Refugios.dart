import 'package:app_perritos/Data/Refugios.dart';
import 'package:app_perritos/Screens/Animals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharRefugios extends StatelessWidget{

  final Refugios refugios;

  CharRefugios({this.refugios});

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
                      refugios.photoUrl,
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
                decoration: BoxDecoration(borderRadius: new BorderRadius.circular(9), color: refugios.colorr),
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
                                style: refugios.StylesubTitle,
                              ),
                              Text(
                                  refugios.name,
                                style: refugios.Stylecontent,
                              ),
                            ],
                          ),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Ubicación: ',
                                style: refugios.StylesubTitle,
                              ),
                              Text(
                                  refugios.ubication,style: refugios.Stylecontent),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Horario: ',
                                style: refugios.StylesubTitle,
                              ),
                              Text(
                                refugios.horary,
                                style: refugios.Stylecontent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Telefono: ',
                                style: refugios.StylesubTitle,
                              ),
                              Text(
                                refugios.telefono,
                                style: refugios.Stylecontent,
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