import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class Hinge extends StatelessWidget {
  final double width;
  final double height;
  const Hinge({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width * 0.09,
          height: height * 0.90,
          color: AppColors.pokeballRedTop,
        ),
        ClipPath(
          clipper: HingeClip(),
          child: Container(
            width: width * 0.09,
            height: height * 0.90,
            decoration: const BoxDecoration(
              color: AppColors.hingeColor,
            ),
          ),
        ),
      ],
    );
  }
}

class HingeClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;

    path
      ..lineTo(maxX, 0)
      ..lineTo(maxX, maxY)
      ..lineTo(0, maxY);

    path
      ..moveTo(maxX, maxY * 0.14)
      ..arcToPoint(Offset(0, maxY * 0.14), clockwise: false)
      ..lineTo(0, maxY * 0.15)
      ..arcToPoint(
        Offset(maxX, maxY * 0.15),
      );

    path
      ..moveTo(maxX, maxY * .83)
      ..arcToPoint(Offset(0, maxY * .83), clockwise: false)
      ..lineTo(0, maxY * .84)
      ..arcToPoint(
        Offset(maxX, maxY * .84),
      );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
