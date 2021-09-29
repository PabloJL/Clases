import 'package:ejemplo_login/components/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _usuario ="";
  String _pass="";
  var _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Color(0xFF2661FA)
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.03,),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Usuario"
                    ),
                    validator: (value)=> value.toString().isEmpty ? "Usuario es obligatorio": null,
                    onSaved: (value)=> _usuario= value.toString(),
                  )
                ),
                SizedBox(height: size.height * 0.03,),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Contraseña"
                      ),
                      validator: (value)=> value.toString().isEmpty ? "Contraseña es obligatoria": null ,
                      onSaved: (value)=> _pass= value.toString(),
                    )
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap: (){ print("contraseña olvidada!");},
                    child: Text(
                      "¿Se te olvidó la contraseña?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF2661FA)
                      ),
                    ),
                  ),
                ),
                SizedBox( height: size.height * 0.05,),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: ElevatedButton(
                    onPressed: (){
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> HomePage()));*/
                      final form = _key.currentState;
                      if(form!.validate()){
                        print("datos válidos");
                      }else{
                        print("Datos incorrectos");
                      }
                    },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                        padding: EdgeInsets.all(0)
                      ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        gradient: new LinearGradient(
                            colors:[
                              Color.fromARGB(255, 255, 136, 34),
                              Color.fromARGB(255, 255, 177, 41)
                            ]
                        )
                      ),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Entrar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap:(){print("registro");},
                    child: Text(
                      "¿No tienes una cuenta? Registrate...",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
