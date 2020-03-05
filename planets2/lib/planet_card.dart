import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget card = Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0,10.0)
          )
        ]
      ),
    );
    Widget planetImg = Container(
      margin: EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage('assets/img/earth.png'),
        height: 92.0,
        width: 92.0,
      ),
    );

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          card,
          planetImg
        ],
      ),
    );
  }
}
