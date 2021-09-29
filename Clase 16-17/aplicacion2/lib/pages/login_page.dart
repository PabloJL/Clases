import 'package:aplicacion2/components/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _usuario="";
  String _contrasena="";
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  
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
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2661FA), fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value)=> value.toString().isEmpty ? "Usuario es obligatorio":null,
                  onSaved: (value)=> this._usuario = value.toString(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                    labelText: "Usuario"
                  ),
                )
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(

                    obscureText: true,
                    validator: (value)=> value.toString().isEmpty ? "Contraseña es obligatoria":null,
                    onSaved: (value)=> this._contrasena = value.toString(),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Contraseña"
                    ),
                  )
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "¿Se te olvidó la contraseña?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF2661FA)
                  ),
                )
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
                  onPressed: (){
                    final form = _formKey.currentState;
                    if(form!.validate()){
                      //print("Valido");
                      form.save();
                      if(_usuario=="alejandro" && _contrasena=="123456"){
                        //Mandar a HOME
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: Row(
                                children: [
                                  Icon(Icons.error, color: Colors.white,),
                                  SizedBox(width: 20,),
                                  Expanded(
                                    child: Text("Usuario y/o contraseña incorrectos!"),
                                  )
                                ],
                              ),
                              duration: Duration(seconds: 2),
                            )
                        );
                      }
                    }else{
                      print("no válido");
                    }
                  },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                      padding: EdgeInsets.all(0),
                    ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: size.width * 0.50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41)
                          ]
                      )
                    ),
                    child: Text(
                      "Entrar",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                    ),
                  )
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: (){
                    print("Click en registrar!");
                  },
                  child: Text(
                    "¿No tienes una cuenta?, Registrate...",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF2661FA)),
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
