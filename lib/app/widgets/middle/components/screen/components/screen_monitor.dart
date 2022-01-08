import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class ScreenMonitor extends StatelessWidget {
  final double height;
  final double width;
  const ScreenMonitor({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthP = width * 0.82;
    final double heightP = height * 0.69;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: Alignment.center,
          width: width,
          height: heightP,
          decoration: BoxDecoration(
            color: AppColors.screenMonitorColor,
            borderRadius: BorderRadius.circular(widthP * 0.06),
          ),
        ),
        // Positioned(child: aqui o pikachu)
      ],
    );
  }
}
