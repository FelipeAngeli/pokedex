import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class LeftScreenButton extends StatelessWidget {
  final double size;
  const LeftScreenButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: AppColors.pokeballRedBottom,
        shape: BoxShape.circle,
      ),
    );
  }
}
