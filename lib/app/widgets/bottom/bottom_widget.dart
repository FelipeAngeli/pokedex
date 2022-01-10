import 'package:flutter/material.dart';
import 'components/action_button/action_button.dart';
import 'components/big_button.dart';
import 'components/green_button.dart';
import 'components/start_buttom.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width * 0.07,
          bottom: size.height * 0.18,
          child: BigButton(size: size.width * 0.15),
        ),
        Positioned(
          left: size.width * 0.59,
          bottom: size.height * 0.11,
          child: ActionButton(size: size.width * 0.27),
        ),
        Positioned(
          left: size.width * 0.26,
          bottom: size.height * 0.13,
          child: GreenButton(size: size.width * 0.26),
        ),
        Positioned(
          left: size.width * 0.45,
          bottom: size.height * 0.26,
          child: StartButton(
              size: size.width * 0.1, startButtonType: StartButtonType.start),
        ),
        Positioned(
          left: size.width * 0.27,
          bottom: size.height * 0.26,
          child: StartButton(
              size: size.width * 0.1, startButtonType: StartButtonType.select),
        ),
      ],
    );
  }
}
