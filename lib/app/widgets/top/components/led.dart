import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

enum LedColor { green, yellow, red }

class Led extends StatelessWidget {
  final double size;
  final LedColor color;
  const Led({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color borderColor;
    final Gradient gradient;

    if (color == LedColor.green) {
      borderColor = AppColors.greenLedBorder;
      gradient = AppColors.LedGreenGradient;
    } else if (color == LedColor.red) {
      borderColor = AppColors.redLedBorder;
      gradient = AppColors.LedRedGradient;
    } else {
      borderColor = AppColors.yellowLedBorder;
      gradient = AppColors.LedYellowGradient;
    }
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor),
        gradient: gradient,
      ),
    );
  }
}
