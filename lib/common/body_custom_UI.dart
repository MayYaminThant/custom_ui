import '../common/custom_style.dart';
import 'package:flutter/material.dart';

enum ListDirection { ROW, COLUMN }

class BodyCustomUI extends StatelessWidget {
  BodyCustomUI({
    Key? key,
    required this.children,
    required this.listDirection,
    this.isWithDivider,
    this.style,
  }) : super(key: key);

  final List<Widget> children;
  final ListDirection listDirection;
  final bool? isWithDivider;
  final CustomStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: style!.margin,
      decoration: BoxDecoration(
        borderRadius: style!.borderRadius,
        color: Colors.black,
      ),
      child: childByDirection(),
    );
  }

  Widget childByDirection() {
    return (listDirection == ListDirection.ROW
        ? Row(
            children: buildChildren(),
          )
        : Column(
            children: buildChildren(),
          ));
  }

  List<Widget> buildChildren() {
    List<Widget> lstWidget = [];
    for (var item in this.children) {
      lstWidget.add(item);
      lstWidget.add(divider);
    }
    return lstWidget;
  }

  Container get divider => Container(
        width: 0.2,
        height: 35,
        color: Colors.white,
      );
}
