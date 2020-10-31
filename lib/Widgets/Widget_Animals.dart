import 'package:app_perritos/Screens/Detail_Animals_Screen.dart';
import 'package:app_perritos/model/animales_character.dart';
import 'package:flutter/material.dart';

class AnimalsWidget extends StatelessWidget {
  final AnimalsCharacter animalsCharacter;

  AnimalsWidget({this.animalsCharacter});

  @override
  Widget build(BuildContext context) {
    var subTitleStyle = TextStyle(
      fontSize: 15,
      color: Colors.blue,
    );
    var contentStyle = TextStyle(
      fontSize: 15,
      color: Colors.black,
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsAnimalScreen(
              character: animalsCharacter,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 30,
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Image.network(animalsCharacter.photo),
              ),
            ),
            Flexible(
              flex: 70,
              child: Container(
                height: 120,
                width: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          animalsCharacter.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Raza: ',
                                  style: subTitleStyle,
                                ),
                                Text(
                                  animalsCharacter.race,
                                  style: contentStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Edad: ',
                                  style: subTitleStyle,
                                ),
                                Text(
                                  '${animalsCharacter.age}-años',
                                  style: contentStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
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
