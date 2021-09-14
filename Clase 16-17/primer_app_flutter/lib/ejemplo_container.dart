import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Ejemplo Container",
            style: TextStyle(
                fontFamily: 'Signatra',
                fontSize: 40,
                //fontWeight: FontWeight.bold
               color: Colors.amberAccent
            )
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo.jpeg',),
                fit: BoxFit.cover
              )
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Center(
                child: Text(
                  "HOLA",
                  style: GoogleFonts.dancingScript(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                  ),
                )
            )
      ),
    );
  }
}
