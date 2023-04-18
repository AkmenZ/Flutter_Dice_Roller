import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var radiusSize = 1.0;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colors,
          radius: radiusSize,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
