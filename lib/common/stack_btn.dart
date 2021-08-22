import '../common/custom_style.dart';
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
    required this.isSelected,
    this.onTab,
    this.style,
  });
  final BuildContext context;
  final String text;
  final Function()? onTab;
  final CustomStyle? style;
  final bool isSelected;

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
              child: Center(child: _text(text, style!.textColor)),
            ),
          ),
          Positioned(
            top: -15,
            bottom: 44,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: this.isSelected
                    ? style!.selectedIndicatorColor
                    : style!.indicatorColor,
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
