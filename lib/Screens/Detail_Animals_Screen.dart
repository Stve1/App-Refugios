import 'package:app_perritos/model/animales_character.dart';
import 'package:flutter/material.dart';

class DetailsAnimalScreen extends StatelessWidget {
  final AnimalsCharacter character;

  const DetailsAnimalScreen({this.character});

  @override
  Widget build(BuildContext context) {
    return Text('Animal detail screen');
  }
}
