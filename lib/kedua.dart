import 'package:flutter/material.dart';
import 'package:flutter_application_1/Grid.dart';
import 'package:flutter_application_1/grid_data.dart';
import 'package:flutter_application_1/listHorizontal.dart';
import 'package:flutter_application_1/listVertical.dart';

class Utama extends StatelessWidget {
  const Utama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman List View",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: const Text(
              "Halaman Daftar List View",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => listVertical()));
            },
            child: Text(
              "List View Verical",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => listHorizontal()));
            },
            child: Text(
              "List View Horizontal",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Grid()));
            },
            child: Text(
              "Grid View",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GridData()));
            },
            child: const Text(
              "Grid View Data",
              style: TextStyle(color: Colors.white),
            ),  
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 59, 154, 255)),
          ),
        ],
      ),
    );
  }
}
