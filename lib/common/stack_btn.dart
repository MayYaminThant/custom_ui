import '../util/screen_size_util.dart';
import 'package:flutter/material.dart';

Widget _text(String text, Color? color) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 12),
  );
}

class StackBtn extends StatelessWidget {
  StackBtn({
    required this.context,
    required this.text,
    this.textColor,
    this.indicatorColor,
    this.containerColor, this.onTab,
  });
  final BuildContext context;
  final String text;
  final Color? textColor;
  final Color? indicatorColor;
  final Color? containerColor;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    double scrW = screenWidth(context);
    double containerWidth = (scrW / 4) - 5;
    double indicatorWidth = (containerWidth / 2) + 15;

    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          InkWell(
            onTap: onTab,
            child: Container(
              height: 50,
              width: containerWidth,
              child: Center(child: _text(text, textColor)),
            ),
          ),
          Positioned(
            top: -15,
            bottom: 44,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: indicatorColor,
              ),
              width: indicatorWidth,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}

Container get divider => Container(
      width: 0.2,
      height: 35,
      color: Colors.white,
    );
