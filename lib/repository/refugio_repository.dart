import 'package:app_perritos/model/character.dart';

class RefugioRepository {
  // create read update delete

  final List<Character> _REFUGIOS = [
    Character(
      name: 'Lisa',
      horary: '6AM-5PM',
      photo: 'https://thumbs.gfycat.com/AgedPastelChrysalis-small.gif',
      terminates: 'Estudiar',
      ubication: 'Springfield',
      description: 'lalala',
    ),
    Character(
      name: 'Bart',
      horary: '7AM-1PM',
      photo:
          'https://i.pinimg.com/originals/a9/24/09/a92409589f083b5911c59084d7c61a11.gif',
      terminates: 'caramba',
      ubication: 'Springfield',
      description: 'lalalal',
    ),
    Character(
        name: 'Homero',
        horary: '10AM-4PM',
        photo:
            'https://estaticos.muyinteresante.es/media/cache/760x570_thumb/uploads/images/article/5c3871215bafe83b078adbe3/perro.jpg',
        terminates: 'no me interesa',
        ubication: 'Springfield',
        description: 'lalala'),
  ];

  getRefugio(String name) {
    // TODO ADD CODE TO GET A REFUGIO
  }

  bool createRefugio(Character character) {
    // TODO ADD CODE TO CREATE A REFUGIO
  }

  bool updateRefugio(Character character) {
    // TODO ADD CODE TO UPDATE A REFUGIO
  }

  bool deleteRefugio(String name) {
    // TODO ADD CODE TO DELETE A REFUGIO
  }

  List<Character> getAll({String sort}) {
    var refugio = _REFUGIOS.map((r) => r).toList();

    if (sort != null) {
      if (sort == 'name.asc') {
        refugio.sort(
            (refugioA, refugioB) => refugioA.name.compareTo(refugioB.name));
      }
      if (sort == 'name.desc') {
        {
          refugio.sort(
              (refugioA, refugioB) => refugioB.name.compareTo(refugioA.name));
        }
      }
      return refugio;
    }
  }
}
