import 'package:flutter/material.dart';

class listHorizontal extends StatelessWidget {
  const listHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}