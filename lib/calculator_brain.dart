import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    final String bmiString = _bmi?.toStringAsFixed(1) ?? 'Invalid BMI';
    return bmiString;
  }

  String getResult() {
    String? message = '';

    if (_bmi != null) {
      if (_bmi! >= 25) {
        message = 'Sobrepeso';
      } else if (_bmi! > 18.5) {
        message = 'Normal';
      } else {
        message = 'Abaixo do peso';
      }
    }
    return message;
  }

  String getInterpretation() {
    String? message = '';

    if (_bmi != null) {
      if (_bmi! >= 25) {
        message =
            'Ta pesado pai, tem que cortar o doritos se não tu vai bigodar';
      } else if (_bmi! > 18.5) {
        message = 'Ta no shape. mantem';
      } else {
        message =
            'De longe parece uma pipa e de perto parece que ta de longe. vai comer um doritos! num fode';
      }
    }
    return message;
  }
}
