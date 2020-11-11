import 'package:flutter/material.dart';
import 'package:tj_carousel_slider/widgets/reusable_card.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key key,
    this.title = '',
    this.leading,
    this.onPressed,
    this.fontSize,
    this.borderRadius = 0,
    this.verticalPadding = 5,
    this.verticalMargin = 0,
    this.horizontalMargin = 0,
    this.trailing,
  }) : super(key: key);

  final String title;
  final IconData leading;
  final Function onPressed;
  final double fontSize;
  final double borderRadius;
  final double verticalPadding;
  final double verticalMargin;
  final double horizontalMargin;
  final IconData trailing;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      onPress: onPressed,
      colour: Colors.grey[700],
      cardBorderRadius: borderRadius,
      verticalPadding: verticalPadding,
      horizontalMargin: horizontalMargin,
      verticalMargin: verticalMargin,
      cardChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Icon(
                leading,
                color: Colors.grey[100],
              ),
              SizedBox(
                width: 3.0,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.grey[100], fontSize: fontSize),
              )
            ],
          ),
          Row(
            children: [
              Icon(trailing, color: Colors.grey[100]),
              SizedBox(width: 10)
            ],
          )
        ],
      ),
    );
  }
}
