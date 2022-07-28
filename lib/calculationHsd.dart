import 'dart:core';
import 'hsd.dart';

class CalculationHsd {
  CalculationHsd({required this.inputHsdValue});

  final double inputHsdValue;

  calculateHsdVolume() {
    int upperValue = inputHsdValue.ceil();
    int lowerValue = inputHsdValue.floor();
    double midValue = (inputHsdValue - lowerValue);
    String volUpperValue = hsd[upperValue];
    String volLowerValue = hsd[lowerValue];
    double volMidValue =
        double.parse(volUpperValue) - double.parse(volLowerValue);
    double outputValue = (midValue * volMidValue) + double.parse(volLowerValue);
    return outputValue.toStringAsFixed(3);
  }
}
