import 'package:flutter/material.dart';
import 'package:pokedex/app/core/colors/colors.dart';

class Component {
  Widget topPokeballBackground(Size size) {
    return Container(
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.pokeballRedTop, AppColors.pokeballRedBottom],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget bottomPokeballBackground(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.pokeballWhiteTop, AppColors.pokeballWhiteBottom],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget borderTopSide() {
    return ClipPath(
      clipper: BorderTopSide(),
      child: Container(
        height: 76,
        color: AppColors.black,
      ),
    );
  }

  Widget borderBottomSide() {
    return ClipPath(
      child: ClipPath(
        clipper: BorderBottomSide(),
        child: Container(
          height: 76,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget openButton(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        border: Border.all(width: 3),
      ),
      child: Center(
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            border: Border.all(width: 3),
          ),
        ),
      ),
    );
  }
}

class BorderTopSide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var addClipCircle = Rect.fromCircle(
      center: Offset(size.width * .5, size.height),
      radius: size.height,
    );

    var rectBorderTopSide = Rect.fromCenter(
      center: Offset(size.width * .5, size.height),
      height: 40,
      width: size.width,
    );

    var path = Path()
      ..addRect(rectBorderTopSide)
      ..addOval(addClipCircle);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class BorderBottomSide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final addClipCircle = Rect.fromCircle(
      center: Offset(size.width * .5, size.height * 0),
      radius: size.height,
    );
    final subtractClipCircle = Rect.fromCircle(
      center: Offset(size.width * .5, size.height * 0),
      radius: size.height * .68,
    );

    final rectBorderTopSide = Rect.fromCenter(
      center: Offset(size.width * .5, size.height * 0),
      height: 40,
      width: size.width,
    );

    // Rect arcRect = Rect.fromLTRB(
    //   size.width * .405,
    //   size.height * .26,
    //   size.width * .60,
    //   size.height,
    // );

    final path = Path()
          ..addRect(rectBorderTopSide)
          ..addOval(addClipCircle)
          // ..fillType = PathFillType.evenOdd
          ..addOval(subtractClipCircle)
        // ..moveTo(0, 0)
        // ..lineTo(size.width * 0, size.height * .26)
        // ..lineTo(size.width * .3, size.height * .26)
        // ..arcTo(arcRect, 10
        // , 0, false)
        // ..lineTo(size.width, size.height * .26)
        //
        ;

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
