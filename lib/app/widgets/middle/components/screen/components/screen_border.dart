import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';
import 'screen_monitor.dart';

class ScreenBorder extends StatelessWidget {
  const ScreenBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            ClipPath(
              clipper: ScreenBorderClip(),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.screenBorderColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      constraints.maxWidth * 0.06,
                    ),
                  ),
                  border: Border.all(
                    color: AppColors.lampStroke,
                  ),
                ),
              ),
            ),
            Positioned(
              top: constraints.maxHeight * 0.07,
              right: (constraints.maxWidth - (constraints.maxWidth * 0.82)) / 2,
              left: (constraints.maxWidth - (constraints.maxWidth * 0.82)) / 2,
              child: ScreenMonitor(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
              ),
            ),
          ],
        );
      },
    );
  }
}

class ScreenBorderClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;

    path
      ..lineTo(0, maxY - (maxX * 0.14))
      ..lineTo(maxX * 0.14, maxY)
      ..lineTo(maxX, maxY)
      ..lineTo(maxX, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
