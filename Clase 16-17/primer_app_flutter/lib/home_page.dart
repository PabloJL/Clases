import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int presionado=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter First App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),Text("Presionaste el botón $presionado veces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
            Container(
              height: 1000,
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Icon(Icons.print), style: ElevatedButton.styleFrom(primary: Colors.purple,)),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.email) ,style: ElevatedButton.styleFrom(primary: Colors.red,)),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.verified_user), style: ElevatedButton.styleFrom(primary: Colors.cyan,)),

              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          presionado++;
          print(presionado);
          setState(() {

          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
