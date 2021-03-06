import 'package:flutter/material.dart';

const cardMargin = 15.0;
const cardBorderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(cardMargin),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
      ),
    );
  }
}
