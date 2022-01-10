import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class GreenButton extends StatelessWidget {
  final double size;
  const GreenButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size * 0.54,
      width: size,
      decoration: BoxDecoration(
        color: AppColors.greenButtonColor,
        border: Border.all(
          width: size * 0.03,
          color: AppColors.greenButtonBorderColor,
        ),
        borderRadius: BorderRadius.circular(size * 0.15),
      ),
    );
  }
}
