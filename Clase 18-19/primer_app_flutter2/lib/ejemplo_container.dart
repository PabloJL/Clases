import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
            "Ejemplo Container",
             style: TextStyle(fontFamily: 'Signatra', fontSize: 40),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo2.jpeg',),
              fit: BoxFit.cover
            )
          ),
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Center(child: Text("Hola Mundo",style: GoogleFonts.lobster(fontSize: 50, color: Colors.white),))
        ),
      ),
    );
  }
}
