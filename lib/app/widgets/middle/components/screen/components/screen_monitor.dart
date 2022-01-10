import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class ScreenMonitor extends StatelessWidget {
  final double height;
  final double width;
  const ScreenMonitor({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthMonitor = width * 0.82;
    final double heightMonitor = height * 0.69;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: Alignment.center,
          width: width,
          height: heightMonitor,
          decoration: BoxDecoration(
            color: AppColors.screenMonitorColor,
            borderRadius: BorderRadius.circular(heightMonitor * 0.06),
          ),
        ),
        // Positioned(child: aqui o pikachu)
      ],
    );
  }
}
