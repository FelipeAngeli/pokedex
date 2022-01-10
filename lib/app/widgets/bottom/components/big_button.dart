import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class BigButton extends StatelessWidget {
  final double size;
  const BigButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(),
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.bigButtonLayer0Top,
            AppColors.bigButtonLayer0Bottom,
          ],
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            alignment: Alignment.center,
            width: constraints.maxWidth * 0.81,
            height: constraints.maxHeight * 0.81,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  AppColors.bigButtonLayer1Bottom,
                  AppColors.bigButtonLayer1Top,
                ],
              ),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth * 0.93,
                  height: constraints.maxHeight * 0.93,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.bigButtonLayer2Top,
                        AppColors.bigButtonLayer2Bottom,
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
