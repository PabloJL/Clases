import 'package:flutter/material.dart';
String _nombre = "Alejandro";
void main() => runApp(
  MaterialApp(
    title: "Flutter Application",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: FlutterLogo(),
        title: Text("Flutter App"),
      ),
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            /*child: Text(
              "Enjoy it!!",
              style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.amber
              ),
            ),*/
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.red,
            /*child: Text(
              "Enjoy it!!",
              style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.amber
              ),
            ),*/
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
            /*child: Text(
              "Enjoy it!!",
              style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.amber
              ),
            ),*/
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    ),
  )
);


/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

*/