import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.green,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
