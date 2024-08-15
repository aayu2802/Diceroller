import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlgin = Alignment.topLeft;
const endAlgin = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.grey,
        color2 = Colors.blueGrey;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlgin,
          end: endAlgin,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
