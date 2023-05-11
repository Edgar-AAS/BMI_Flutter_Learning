import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.colour, this.cardChild, this.cardTapped});

  final Color colour;
  final Widget? cardChild;
  final Function? cardTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (cardTapped != null) {
          cardTapped!();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(  
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
