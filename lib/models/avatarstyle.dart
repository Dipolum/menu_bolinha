import 'package:flutter/material.dart';

class AvatarStyle {
  final TextStyle textStyle;
  final double minSize;
  final double maxSize;
  final double fontSize;
  final Color backgroundColor;

  AvatarStyle({
    this.fontSize = 16.0,
    this.minSize = 30.0,
    this.maxSize = 40,
    this.textStyle,
    this.backgroundColor = Colors.white,
  });
}
