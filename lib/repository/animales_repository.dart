import 'package:app_perritos/model/animales_character.dart';
import 'package:app_perritos/model/character.dart';

class AnimalsRepository {
  // create read update delete

  final List<AnimalsCharacter> _ANIMALES = [
    AnimalsCharacter(
      name: 'dukas',
      age: '3',
      race: 'bambino',
      photo:
          'https://estaticos.muyinteresante.es/media/cache/760x570_thumb/uploads/images/article/5c3871215bafe83b078adbe3/perro.jpg',
    ),
    AnimalsCharacter(
      name: 'carin',
      age: '4',
      race: 'cara-aplastada',
      photo: 'https://c.files.bbci.co.uk/48DD/production/_107435681_perro1.jpg',
    ),
  ];

  getAnimals(String name) {
    // TODO ADD CODE TO GET A ANIMALS
  }
  createAnimals(Character character) {
    //TODO ADD CODE TO CREATE A ANIMALS
  }
  updateAnimals(Character character) {
    //TODO ADD CODE TO UPDATE A ANIMALS
  }
  deleteAnimals(Character character) {
    //TODO ADD CODE TO DELETE A ANIMALS
  }

  List<AnimalsCharacter> getAll({String sort}) {
    var animals = _ANIMALES.map((a) => a).toList();

    if (sort != null) {
      if (sort == 'name.asc') {
        animals.sort(
            (animalsA, animalsB) => animalsA.name.compareTo(animalsB.name));
      }
      if (sort == 'name.desc') {
        {
          animals.sort(
              (animalsA, animalsB) => animalsB.name.compareTo(animalsA.name));
        }
      }
      return animals;
    }
  }
}
