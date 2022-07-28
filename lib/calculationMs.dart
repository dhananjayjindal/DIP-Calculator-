import 'dart:core';
import 'ms.dart';

class CalculationMs {
  CalculationMs({required this.inputMsValue});

  final double inputMsValue;

  calculateMsVolume() {
    int upperValue = inputMsValue.ceil();
    int lowerValue = inputMsValue.floor();
    double midValue = (inputMsValue - lowerValue);
    String volUpperValue = ms[upperValue];
    String volLowerValue = ms[lowerValue];
    double volMidValue =
        double.parse(volUpperValue) - double.parse(volLowerValue);
    double outputValue = (midValue * volMidValue) + double.parse(volLowerValue);
    return outputValue.toStringAsFixed(3);
  }
}
