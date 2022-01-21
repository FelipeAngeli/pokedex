import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

enum StartButtonType { start, select }

class StartButton extends StatelessWidget {
  final StartButtonType startButtonType;
  final double size;
  const StartButton({
    Key? key,
    required this.startButtonType,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color;

    switch (startButtonType) {
      case StartButtonType.select:
        color = AppColors.redLedBorder;
        break;
      default:
        color = AppColors.startButtonStartColor;
    }
    return Container(
      alignment: Alignment.center,
      height: size * 0.24,
      width: size,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: size * 0.02,
          color: AppColors.startButtonStartBorderColor,
        ),
        borderRadius: BorderRadius.circular(size * 0.05),
      ),
    );
  }
}
