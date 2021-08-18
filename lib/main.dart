import 'package:flutter/material.dart';
import 'package:sherp_darts/pages/home_page.dart';

void main() {
  runApp(SherpDarts());
}

class SherpDarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SherpDarts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
