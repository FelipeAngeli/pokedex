import 'package:flutter/material.dart';

import 'components/left_screen_button.dart';
import 'components/screen_border.dart';
import 'components/sound_button.dart';

class Screen extends StatelessWidget {
  final double width;
  final double height;
  const Screen({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.77,
      height: height * 0.35,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              const ScreenBorder(),
              Positioned(
                left: constraints.maxHeight * 0.16,
                bottom: constraints.maxWidth * 0.06,
                child: LeftScreenButton(
                  size: constraints.maxWidth * 0.06,
                ),
              ),
              Positioned(
                right: constraints.maxWidth * 0.16,
                bottom: constraints.maxHeight * 0.04,
                child: SoundButton(
                  size: constraints.maxWidth * 0.08,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
