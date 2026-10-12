import 'package:flutter/material.dart';
import 'package:flutter_widgets_salikov/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final List<Color> cols;
  const GradientContainer(this.cols, {super.key});

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: cols,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
