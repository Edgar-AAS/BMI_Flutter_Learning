import 'package:bmi_flutter/constants.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_flutter/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiCategory,
      required this.bmiValue,
      required this.interpretationText});

  final String interpretationText;
  final String bmiCategory;
  final String bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Resultado',
                style: kSemiBoldLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiCategory,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiValue,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretationText,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTapped: () {
              Navigator.pop(context);
            },
            title: 'RECALCULAR',
          )
        ],
      ),
    );
  }
}
