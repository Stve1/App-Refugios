import 'package:app_perritos/Models/character.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailRefugioScreen extends StatelessWidget {
  final Character character;
  DetailRefugioScreen({this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Image.network(character.photo),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              border: Border.all(
                color: Colors.red,
                width: 5,
              ),
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(4, -4),
                ),
                BoxShadow(
                  color: Colors.lightBlueAccent,
                  offset: Offset(-4, 4),
                ),
              ],
              gradient: LinearGradient(
                colors: [Colors.pinkAccent[100], Colors.purple],
              ),
            ),
            child: Text(
              character.description,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(181, 252, 240, 1),
    );
  }
}
