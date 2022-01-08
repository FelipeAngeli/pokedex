import 'package:flutter/material.dart';

import 'components/frame_lamp.dart';
import 'components/led.dart';
import 'components/top_side.dart';
import 'components/top_side_elevated.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height * .24;
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: width,
        height: height,
        child: LayoutBuilder(builder: (ctx, cnst) {
          return Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: TopSideElevated(width: width, height: height),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: TopSide(width: width, height: height),
              ),
              Positioned(
                top: height * .17,
                left: width * .08,
                child: FrameLamp(width: width, height: height),
              ),
              Positioned(
                left: width * .35,
                top: height * .16,
                child: Container(
                  width: width * .15,
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Led(size: width * .03, color: LedColor.red),
                      Led(size: width * .03, color: LedColor.yellow),
                      Led(size: width * .03, color: LedColor.green),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
