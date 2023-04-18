import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text; // store in variable

  @override
  Widget build(context) {
    return Text(
      text, // call the variable
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
