import 'package:flutter/material.dart';

class CustomStyle {
  const CustomStyle({
    this.textColor,
    this.selectedTextColor,
    this.indicatorColor,
    this.selectedIndicatorColor,
    this.backgroundColor,
    this.borderRadius,
    this.margin,
  });

  CustomStyle copyWith({
    Color? textColor,
    Color? selectedTextColor,
    Color? indicatorColor,
    Color? selectedIndicatorColor,
    Color? backgroundColor,
    BorderRadiusGeometry? borderRadius,
    EdgeInsetsGeometry? margin,
  }) {
    return CustomStyle(
      textColor: textColor ?? this.textColor,
      selectedTextColor: selectedTextColor ?? this.selectedTextColor,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      selectedIndicatorColor:
          selectedIndicatorColor ?? this.selectedIndicatorColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      margin: margin ?? this.margin,
    );
  }

  final Color? textColor;
  final Color? selectedTextColor;
  final Color? indicatorColor;
  final Color? selectedIndicatorColor;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
}
