import 'package:app_perritos/Data/Tiendas.dart';
import 'package:app_perritos/Screens/Animals.dart';
import 'package:app_perritos/Screens/Detail_Screen.dart';
import 'package:app_perritos/Widgets/Char_Tiendas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTiendas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var Tienda1 = Tiendas(
      name: 'Central Pecuaria',
      photoUrl: 'https://images.paginasamarillas.com/15451508/761967/animation/1.jpg',
      ubication: 'Cl 28 4c - 16',
      horary: 'Lunes- Viernes 8:00- 6:00',
      Estrellas: 4.4,
      colorr: Colors.green,
      telefono: '264 1160 - 320 8535324',
      web: 'https://www.centralpecuaria.com/',
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
    );
    var Tienda2 = Tiendas(
      name: 'Alimalandia Veterinaria',
      photoUrl: 'https://scontent.fpei1-1.fna.fbcdn.net/v/t1.0-9/80881666_100542588141653_8261577487452995584_o.jpg?_nc_cat=109&ccb=2&_nc_sid=6e5ad9&_nc_eui2=AeF5O9ZB4FXrKP0yWORVSApZRLmtDQ8A8mBEua0NDwDyYKK-UETNxZmi_Q8bh18Qw8a3rE3oejpX1WD8Bdrl0Ifd&_nc_ohc=raSKoECjEpkAX-dkzRx&_nc_ht=scontent.fpei1-1.fna&oh=83529103b0227d1f6eb699b527be4781&oe=5FC30B8B',
      ubication: 'Cr12 S 20-87 Ricaurte',
      horary: 'Lunes- Viernes 8:00- 6:00',
      Estrellas: 4.4,
      colorr: Colors.red,
      telefono: '264 1160 - 320 8535324',
      web: 'https://www.facebook.com/pages/category/Consulting-Agency/Veterinaria-alimalandia-100391581490087/',
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
    );
    var Tienda3 = Tiendas(
      name: 'Supermascotas Veterinaria',
      photoUrl: 'https://scontent.fdoh3-2.fna.fbcdn.net/v/t1.0-9/91654435_2569898473293033_4248334383641001984_o.jpg?_nc_cat=109&_nc_sid=110474&_nc_ohc=NTYdVwjrATUAX-1k14D&_nc_ht=scontent.fdoh3-2.fna&oh=7f7fda5f8f5d7191fe700b93dbc7a01a&oe=5FAD3E6B',
      ubication: 'Carrera 9 mz 20 Casa 10 Jordan',
      horary: '24 horas',
      Estrellas: 4.6,
      colorr: Colors.blue,
      telefono: '2713626-2785309',
      web: 'https://www.facebook.com/supermascotas.ibague',
      StylesubTitle: TextStyle(color: Colors.yellow),
      Stylecontent: TextStyle(color: Colors.white),
      TextDetail: Colors.white,
    );
    var Tienda4 = Tiendas(
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
    var Tienda5 = Tiendas(
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
          CharTiendas(
            tiendas: Tienda1,
          ),
          CharTiendas(
            tiendas: Tienda2,
          ),
          CharTiendas(
            tiendas: Tienda3,
          ),
          CharTiendas(
            tiendas: Tienda4,
          ),
          CharTiendas(
            tiendas: Tienda5,
          ),

        ],
      ),
    );
  }
}