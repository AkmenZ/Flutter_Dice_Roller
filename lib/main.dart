import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Color.fromRGBO(212, 152, 147, 1), Color.fromARGB(255, 72, 35, 69)],
        ),
      ),
    ),
  );
}
