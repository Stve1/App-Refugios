import 'package:app_perritos/Widgets/Widget_Refugio.dart';
import 'package:app_perritos/repository/refugio_repository.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RefugioScreen extends StatelessWidget {
  final _RefugioRepository = RefugioRepository();

  @override
  Widget build(BuildContext context) {
    final refugio = _RefugioRepository.getAll(sort: 'name.asc');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Refugios',
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
            children: refugio
                .map((refugio) => RefugioWidget(
                      character: refugio,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
