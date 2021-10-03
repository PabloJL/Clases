// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:typed_data';

import 'package:aplicacion2/components/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fzregex/utils/pattern.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fzregex/fzregex.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // final _preferencesService = PreferencesService();
  // var _nombre = TextEditingController();
  // var _usuario = TextEditingController();
  // var _contrasena = TextEditingController();
  // var _contrasenaR = TextEditingController();
  String _nombre = "";
  String _usuario = "";
  String _contrasena = "";
  String _contrasenaR = "";
  String _email = "";
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // _populateFields();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  _setState() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nombre', _nombre);
    pref.setString('email', _email);
    pref.setString('usuario', _usuario);
    pref.setString('contraseña', _contrasena);
  }

  // void _populateFields() async {
  //   final settings = await _preferencesService.getSettings();
  //   setState(() {
  //     _nombre = settings.username;
  //     _usuario = settings.gender;
  //     _contrasena = settings.programmingLanguages;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "SIGNUP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA),
                      fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),

              //Nombre
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) =>
                        value.toString().isEmpty ? "Nombre obligatorio" : null,
                    onSaved: (value) => this._nombre = value.toString(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Nombre Completo"),
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),

              //Usuario
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) => value.toString().isEmpty
                        ? "Usuario es obligatorio"
                        : null,
                    onSaved: (value) => this._usuario = value.toString(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people),
                        labelText: "Usuario"),
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),

              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) => value.toString().isEmpty
                        ? "Email es obligatorio"
                        : null,
                    onSaved: (value) => this._email = value.toString(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email), labelText: "Email"),
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),

              //Contraseña
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) => value.toString().isEmpty
                        ? "Contraseña es obligatoria"
                        : null,
                    onSaved: (value) => this._contrasena = value.toString(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock), labelText: "Contraseña"),
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),

              //Confirmar Contraseña
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) =>
                        value.toString().isEmpty ? "Obligatoria" : null,
                    onSaved: (value) => this._contrasenaR = value.toString(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_clock_sharp),
                        labelText: "Repite contraseña"),
                  )),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    "¿Se te olvidó la contraseña?",
                    style: TextStyle(fontSize: 12, color: Color(0xFF2661FA)),
                  )),
              SizedBox(
                height: size.height * 0.05,
              ),

              //Botón 1.-Validaciones
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      _setState();
                      // final SharedPreferences pref =
                      //     await SharedPreferences.getInstance();
                      // pref.setString('nombre', _nombre);
                      // pref.setString('usuario', _usuario);
                      // pref.setString('contraseña', _contrasena);
                      final form = _formKey.currentState;
                      if (form!.validate()) {
                        //print("Valido");
                        form.save();
                        if (_contrasena != _contrasenaR) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Row(
                              children: [
                                Icon(
                                  Icons.error,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text("Las contraseñas no son las mismas"),
                                )
                              ],
                            ),
                            duration: Duration(seconds: 2),
                          ));
                        }else if(Fzregex.hasMatch(_email, FzPattern.email) == false){
                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Row(
                              children: [
                                Icon(
                                  Icons.error,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text("El formato del email no es correcto"),
                                )
                              ],
                            ),
                            duration: Duration(seconds: 2),
                          ));
                        } 
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child:
                                      Text("Registo completado exitosamente"),
                                )
                              ],
                            ),
                            duration: Duration(seconds: 2),
                          ));

                          Timer(Duration(seconds: 1), () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          });
                        }
                      } else {
                        print("no válido");
                      }
                    },

                    //Botón 2.-Estilos
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80)),
                      padding: EdgeInsets.all(0),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: size.width * 0.50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41)
                          ])),
                      child: Text(
                        "Registrarse",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    )),
              ),

              //¿Ya tiene cuenta?
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "¿Ya tienes cuenta? Ingresa...",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Future<bool> saveNombrePreference(String nombre) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString("nombre", nombre);

//   return prefs.commit();
// }

// Future<String> getNombrePreference() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String name = prefs.getString("name");

//   return name;
// }
