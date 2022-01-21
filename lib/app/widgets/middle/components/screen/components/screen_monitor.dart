import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';
import 'package:pokedex/app/widgets/middle/components/paint/pikachuuu.dart';

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
          width: widthMonitor,
          height: heightMonitor,
          decoration: BoxDecoration(
            color: AppColors.screenMonitorColor,
            borderRadius: BorderRadius.circular(heightMonitor * 0.06),
          ),
        ),
        //TODO aqui o pikachu
        Positioned(
          bottom: -width * 0.07,
          left: height * 0.13,
          child: const Pikachu(), //<----  Aqui pikachu
        )
      ],
    );
  }
}
