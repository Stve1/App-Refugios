import 'package:app_perritos/Widgets/Widget_Animals.dart';
import 'package:app_perritos/model/animales_character.dart';
import 'package:app_perritos/repository/animales_repository.dart';
import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  final _animalsRepository = AnimalsRepository();

  @override
  Widget build(BuildContext context) {
    final animals = _animalsRepository.getAll();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Animales',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          color: Color.fromRGBO(181, 252, 240, 1),
          child: ListView(
              children: animals
                  .map(
                    (Animals) => AnimalsWidget(
                      character: AnimalsCharacter(),
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }
}
