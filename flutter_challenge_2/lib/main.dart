import 'package:flutter/material.dart';
import 'package:flutter_1/home.dart';

void main() {
  runApp(const FlutteryApp());
}

class FlutteryApp extends StatelessWidget {
  const FlutteryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
