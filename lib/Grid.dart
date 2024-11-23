import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Center(
            child: Text('Item $index', style: Theme.of(context).textTheme.headlineSmall),
          );
        }),
      ),
    );
  }
}