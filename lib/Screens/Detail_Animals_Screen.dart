import 'package:app_perritos/Data/Animales.dart';
import 'package:flutter/material.dart';

class DetailsAnimalScreen extends StatelessWidget {
  final Animales animals;

  const DetailsAnimalScreen({this.animals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          animals.name,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Image.network(
            animals.photoUr,
            width: 1000,
            height: 300,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: Colors.red,
                width: 10,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.amberAccent,
                  offset: Offset(5, 5),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.greenAccent,
                ],
              ),
            ),
            child: Text(
              animals.description,
            ),
          ),
        ],
      ),
    );
  }
}
