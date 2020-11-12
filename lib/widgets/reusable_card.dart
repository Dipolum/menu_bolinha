import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.colour,
    this.cardChild,
    this.onPress,
    this.horizontalMargin = 11.0,
    this.verticalMargin = 5.5,
    this.cardBorderRadius = 10.0,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
  });

  final Color colour;
  final Widget cardChild;
  final double horizontalMargin;
  final double verticalMargin;
  final Function onPress;
  final double cardBorderRadius;
  final double horizontalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: InkWell(
        onTap: () {
          print('abc123213');
        },
        child: cardChild,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cardBorderRadius),
        color: colour,
      ),
    );
  }
}
