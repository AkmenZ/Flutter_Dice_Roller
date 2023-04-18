import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-3.png';

  void rollDice() {
    final random = Random();
    var dice = random.nextInt(6) +
        1; // would return value between 0 and 5 (+ 1 adds up to 6)
    setState(() {
      activeDiceImage = 'assets/images/dice-$dice.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(
                10,
              ),
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll The Dice'))
      ],
    );
  }
}
