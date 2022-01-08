import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class TopSide extends StatelessWidget {
  final double width;
  final double height;
  const TopSide({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopSideClip(),
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: AppColors.topSideColor,
        ),
      ),
    );
  }
}

class TopSideClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double maxX = size.width;
    final double maxY = size.height;
    path
      ..lineTo(0, maxY * .9)
      ..lineTo(maxX * .41, maxY * .9)
      ..lineTo(maxX * .58, maxY * .42)
      ..lineTo(maxX, maxY * .42)
      ..lineTo(maxX, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
