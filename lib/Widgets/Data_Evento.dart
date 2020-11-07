import 'package:app_perritos/Data/Evento.dart';
import 'package:app_perritos/Widgets/Char_Evento.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataEvento extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var Evento1 = Evento(
      name: 'Jornada de Adopción',
      photoUrl: 'https://lh3.googleusercontent.com/proxy/z6mM26D2f77mHbo6rTNr66ITiLohEFgxETr1S1yA_KCVBuDeShjmeET3oQSR3H4DnWvH88jworAcHiaL6U1YfF0B0yZ8YDd8Q71xTi4DEherZAypmPPhBNpXRhxpBgGpTvTY2Di3T2AATQw',
      ubication: 'Colegio Sagrado Corazón',
      horary: '9:00- 4:00',
      Estrellas: 4.4,
      colorr: Colors.grey,
      telefono: '2611855',
      web: 'https://www.centralpecuaria.com/',
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
    );
    var Evento2 = Evento(
      name: 'Fundación Refugio Animal',
      photoUrl: 'https://ondasdeibague.com/images/2020/10_mayo/15/perritos.jpeg',
      ubication: 'Picaleña',
      horary: '8:00- 4:00',
      Estrellas: 4.4,
      colorr: Colors.brown,
      telefono: '316 2203478',
      web: 'https://www.facebook.com/pages/category/Consulting-Agency/Veterinaria-alimalandia-100391581490087/',
      StylesubTitle: TextStyle(color: Colors.lightGreenAccent),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.black,
    );
    var Evento3 = Evento(
      name: 'Moto moto',
      photoUrl: 'https://www.ambientum.com/wp-content/uploads/2020/07/perro-schafer-696x464.jpg',
      ubication: '9 meses',
      horary: 'Chihuahua',
      Estrellas: 4.6,
      colorr: Colors.blue,
      telefono: 'Refugio Central',
      web: 'https://www.facebook.com/supermascotas.ibague',
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
    );
    var Evento4 = Evento(
      name: 'Veterinaria Motas',
      photoUrl: 'https://i.ytimg.com/vi/_9ApW6NJ9iE/hqdefault.jpg',
      ubication: 'Et 3 Manz 32 Casa 7 Av el Jordán',
      horary: 'Lunes-Sábado 8:00-6:00',
      Estrellas: 4.7,
      colorr: Colors.green,
      telefono: '2713626-2785309',
      web: 'N/A',
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
    );
    var Evento5 = Evento(
      name: 'U.M. Veterinaria Huellas',
      photoUrl: 'https://lh3.googleusercontent.com/p/AF1QipNgK36JZkj9zMPSV3NUGjjmK-5TOQsoXFKV-OnA=s1600-w400',
      ubication: 'Cra. 6 ## 56 - 9,',
      horary: 'Lunes-Sábado 8:00-6:00',
      Estrellas: 4.8,
      colorr: Colors.white,
      telefono: '301 6217951',
      web: 'https://unidadmedicaveterinariahuellas.negocio.site/',
      StylesubTitle: TextStyle(color: Colors.blue),
      Stylecontent: TextStyle(color: Colors.black),
      TextDetail: Colors.red,
    );

    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          CharEvento(
            evento: Evento1,
          ),
          CharEvento(
            evento: Evento2,
          ),
          CharEvento(
            evento: Evento3,
          ),
          CharEvento(
            evento: Evento4,
          ),
          CharEvento(
            evento: Evento5,
          ),
        ],
      ),
    );
  }
}
  }
}