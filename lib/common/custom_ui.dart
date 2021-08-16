import 'package:custom_nav_bar/util/screen_size_util.dart';
import 'package:flutter/material.dart';

Widget _text(String text, Color color) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 12),
  );
}

Widget stackBtn(
  BuildContext context,
  String text,
  Color textColor,
  Color indicatorColor,
  Color containerColor,
) {
  double scrW = screenWidth(context);
  double containerWidth = (scrW / 4) - 5;
  double indicatorWidth = (containerWidth / 2) + 15;

  return Expanded(
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 50,
          width: containerWidth,
          child: Center(child: _text(text, textColor)),
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

Container get divider => Container(
      width: 0.2,
      height: 35,
      color: Colors.white,
    );
