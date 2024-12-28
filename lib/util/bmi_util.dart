import 'dart:math';

import 'package:bmi_calculator_flutter/constants/constants.dart';

class BMIUtil {
  final int weight;
  final int height;

  double _bmi = 0.0;

  BMIUtil({required this.weight, required this.height});

  String getBMIScore() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return kResultOverweight;
    } else if (_bmi >= 18.5) {
      return kResultNormal;
    } else {
      return kResultUnderweight;
    }
  }
}
