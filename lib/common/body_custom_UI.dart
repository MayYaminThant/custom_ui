import 'package:flutter/material.dart';

enum ListDirection { ROW, COLUMN }

class BodyCustomUI extends StatelessWidget {
  BodyCustomUI({
    Key? key,
    required this.children,
    this.margin,
    this.decoration,
    required this.listDirection,
  }) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final List<Widget> children;
  final ListDirection listDirection;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      decoration: decoration,
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
    return this.children;
  }
}
