import 'package:flutter/material.dart';
import 'package:bmi_flutter/constants.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key, this.cardIcon, required this.title});
  final IconData? cardIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: kCardIconSize,
        ),
        const SizedBox(
          height: kHeightSpacing,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
