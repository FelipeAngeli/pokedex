import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class SoundButton extends StatelessWidget {
  final double size;
  const SoundButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.08),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.soundLayer0Top,
            AppColors.soundLayer0Bottom,
          ],
        ),
      ),
      child: Container(
        width: size * 0.85,
        height: size * 0.85,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size * 0.08),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.soundLayer1Top,
              AppColors.soundLayer1Bottom,
            ],
          ),
        ),
        child: Container(
          width: size * 0.62,
          height: size * 0.62,
          decoration: const BoxDecoration(
            color: AppColors.soundLayer2,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
