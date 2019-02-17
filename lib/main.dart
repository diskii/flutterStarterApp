import 'package:flutter/material.dart';
import 'category.dart';
import 'category_route.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

const _baseColors = <Color>[
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.greenAccent,
  Colors.purpleAccent,
  Colors.red,
];

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit converter',
      color: Colors.orange,
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
//          child: Category()
            child: CategoryRoute()
        ),
      ),
    );
  }
}
