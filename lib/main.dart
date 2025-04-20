import 'package:flutter/material.dart';
import 'package:softdes_nwaibe/screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstScreen(),
      theme: ThemeData(
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue.shade200),
        useMaterial3: true,
      ),
    ),
  );
}

final List<Map<String, String>> menuItems = [
  {'name': 'Adobo', 'image': 'assets/adobo.jpg'},
  {'name': 'Sinigang', 'image': 'assets/sinigang.jpg'},
  {'name': 'Tinola', 'image': 'assets/tinola.jpg'},
];
