import 'package:flutter/material.dart';
import 'package:bmi_flutter/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTapped,
    required this.title,
  });

  final Function onTapped;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        color: kBottomButtonColor,
        height: kContainerBottomHeight,
        width: double.infinity,
        child: Center(
          child: Text(title, style: kbottomButtonTextStyle),
        ),
      ),
    );
  }
}
