import 'package:custom_nav_bar/util/screen_size_util.dart';
import 'package:flutter/material.dart';

Widget _text(String text, Color color) {
  return Text(
    text,
    style: TextStyle(color: color),
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
  double containerWidth = (scrW / 4) - 2;
  double indicatorWidth = (containerWidth / 2) + 12;

  GlobalKey key = GlobalKey();
  RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
  Offset position = box.localToGlobal(Offset.zero); //this is global position
  double y = position.dy;

  bool isStart = (y / (scrW / 4) == 1);

  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Container(
        key: key,
        width: containerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isStart ? 4 : 0),
          color: containerColor,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: containerColor,
          ),
          child: _text(text, textColor),
          onPressed: () {},
        ),
      ),
      Container(
        width: indicatorWidth,
        height: 10,
        color: indicatorColor,
      )
    ],
  );
}
