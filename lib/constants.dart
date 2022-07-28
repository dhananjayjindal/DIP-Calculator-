import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  const CardChild({required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class ReusableCardA extends StatelessWidget {
  const ReusableCardA({
    required this.colour,
    required this.cardChild,
  });
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Dip Value',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 20,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Colors.blue),
  ),
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
