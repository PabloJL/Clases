import 'package:flutter/material.dart';
import 'package:planets2/planet_card.dart';

class PlanetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          PlanetCard(),
          PlanetCard(),
          PlanetCard(),
        ],
      ),
    );
  }
}
