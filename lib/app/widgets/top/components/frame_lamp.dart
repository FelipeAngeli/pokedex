import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class FrameLamp extends StatelessWidget {
  final double width;
  final double height;
  const FrameLamp({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width * 0.24,
      height: width * 0.24,
      decoration: BoxDecoration(
        color: AppColors.screenFrame,
        shape: BoxShape.circle,
        border: Border.all(
          width: width * 0.24 * 0.01,
          color: AppColors.lampStroke,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double width = constraints.maxWidth * 0.77;
          final double heigth = constraints.maxHeight * 0.77;
          return Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: width,
                height: heigth,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [AppColors.lampInner, AppColors.lampOuter],
                    stops: [0.7, 1], //efeito interno
                  ),
                ),
              ),
              Positioned(
                left: width * 0.28,
                top: width * 0.28,
                child: Container(
                  width: width * 0.21,
                  height: heigth * 0.21,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        AppColors.lampShineIner,
                        AppColors.lampShineOuter,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
