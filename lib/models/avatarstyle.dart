import 'package:flutter/material.dart';

class AvatarStyle {
  final TextStyle textStyle;
  final double radius;
  final double borderRadius;
  final double secondBorderRadius;
  final Color borderColor;
  final Color secondBorderColor;
  final Color backgroundColor;
  final double innerPadding;
  final double outerHorizontalPadding;
  final double outerVerticalPadding;
  final double marginBtwnTextAndImage;
  final bool allLowerCase;

  AvatarStyle({
    this.secondBorderRadius = 0.0,
    this.secondBorderColor = Colors.black,
    this.marginBtwnTextAndImage = 0,
    this.radius = 40.0,
    this.borderRadius = 5.0,
    this.textStyle,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.blueAccent,
    this.innerPadding = 9.0,
    this.outerHorizontalPadding = 9.0,
    this.outerVerticalPadding = 9.0,
    this.allLowerCase = false,
  });
}
