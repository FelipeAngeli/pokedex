import 'package:flutter/material.dart';

import 'components/hinge/hinge_left.dart';
import 'components/screen/screen.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width * 0.06,
          bottom: size.height * 0.34,
          child: Screen(
            width: size.width,
            height: size.height,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Hinge(
            width: size.width,
            height: size.height,
          ),
        ),
      ],
    );
  }
}
