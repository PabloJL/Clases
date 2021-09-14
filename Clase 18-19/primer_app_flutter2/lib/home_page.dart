import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo Scaffold"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello World!!!", style: TextStyle(fontSize: 22),),
          Text("Hello World!!!", style: TextStyle(fontSize: 22),),
          Text("Hello World!!!", style: TextStyle(fontSize: 22),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(child: Icon(Icons.print),onPressed: (){},),
              ElevatedButton(child: Icon(Icons.save),onPressed: (){},),
              ElevatedButton(child: Icon(Icons.share),onPressed: (){},),
            ],
          )
        ],
      ),
    );
  }
}
