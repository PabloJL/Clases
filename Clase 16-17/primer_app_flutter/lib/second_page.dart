import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            color: Colors.blue,
            width: 150,
            height: 150,
          ),
          Container(
            margin: EdgeInsets.all(16),
            color: Colors.red,
            width: 130,
            height: 130,
          ),
          Container(
            margin: EdgeInsets.all(16),
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
