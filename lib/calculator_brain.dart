import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 20;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'You are Over Weight';
    } else if (_bmi > 18.5) {
      return 'You are Normal';
    } else {
      return 'You are Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to workout more to reduce your body weight';
    } else if (_bmi > 18.5) {
      return 'You have Normal body weight. Good Job...!!!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more';
    }
  }
}
