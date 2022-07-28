import 'package:flutter/material.dart';
import 'package:dip_calculator/FirstPage.dart';

void main() => runApp(const TankVolumeCalculator());

class TankVolumeCalculator extends StatelessWidget {
  const TankVolumeCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: Colors.yellowAccent,
      ),
      home: HomePage(),
    );
  }
}
