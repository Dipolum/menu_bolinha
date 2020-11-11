import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.colour,
    this.cardChild,
    this.onPress,
    this.horizontalMargin = 11.0,
    this.verticalMargin = 5.5,
    this.cardBorderRadius = 10.0,
  });

  final Color colour;
  final Widget cardChild;
  final double horizontalMargin;
  final double verticalMargin;
  final Function onPress;
  final double cardBorderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin,
          vertical: verticalMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          color: colour,
        ),
      ),
    );
  }
}
