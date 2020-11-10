import 'package:flutter/material.dart';

class AvatarStyle {
  final TextStyle textStyle;
  final double minSize;
  final double maxSize;
  final double fontSize;
  final Color backgroundColor;
  final double innerPadding;
  final double outerPadding;

  AvatarStyle({
    this.fontSize = 16.0,
    this.minSize = 30.0,
    this.maxSize = 40,
    this.textStyle,
    this.backgroundColor = Colors.white,
    this.innerPadding = 9.0,
    this.outerPadding = 9.0,
  });
}
