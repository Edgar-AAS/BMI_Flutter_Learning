import 'package:bmi_flutter/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'constants.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const BMICalculator(),
    ),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: kAppBarColor,
        ),
        scaffoldBackgroundColor: kScaffoldColor,
      ),
    );
  }
}
