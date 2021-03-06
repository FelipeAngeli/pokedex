import 'package:flutter/material.dart';

class ActionResponse extends StatelessWidget {
  final Alignment alignment;
  const ActionResponse({
    Key? key,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData? icon;
    if (alignment == Alignment.topCenter) icon = Icons.arrow_drop_up_outlined;
    if (alignment == Alignment.centerLeft) icon = Icons.arrow_left;
    if (alignment == Alignment.center) icon = Icons.fiber_manual_record;
    if (alignment == Alignment.bottomCenter) icon = Icons.arrow_drop_down;
    if (alignment == Alignment.centerRight) icon = Icons.arrow_right;

    return Align(
      alignment: alignment,
      child: LayoutBuilder(builder: (buildContext, context) {
        return Container(
          alignment: Alignment.center,
          width: context.maxWidth / 3,
          height: context.maxWidth / 3,
          child: Icon(icon, size: context.maxWidth * 0.27),
        );
      }),
    );
  }
}
