// import 'package:dip_calculator/calculationHsd.dart';
// import 'package:flutter/material.dart';
// import 'constants.dart';
// import 'hsd.dart';
// import 'ms.dart';
//
// const kActiveCardColor = Colors.lightBlue;
// const kSelectedCardColor = Color(0xFF0000f9);
// enum Fuel { ms, hsd }
// double inputValue = 0;
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   Fuel selectedFuel = Fuel.ms;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('TANK VOLUME CALCULATOR'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFuel = Fuel.ms;
//                       });
//                     },
//                     child: ReusableCardA(
//                       colour: selectedFuel == Fuel.ms
//                           ? kSelectedCardColor
//                           : kActiveCardColor,
//                       cardChild: CardChild(
//                         label: 'MS',
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFuel = Fuel.hsd;
//                       });
//                     },
//                     child: ReusableCardA(
//                       colour: selectedFuel == Fuel.hsd
//                           ? kSelectedCardColor
//                           : kActiveCardColor,
//                       cardChild: CardChild(
//                         label: 'HSD',
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               child: Center(
//                 child: TextField(
//                   decoration: kTextFieldInputDecoration,
//                   keyboardType: TextInputType.number,
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 40,
//                   ),
//                   onChanged: (value) {
//                     inputValue = double.parse(value);
//                   },
//                 ),
//               ),
//               padding: const EdgeInsets.all(15),
//               margin: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: kActiveCardColor,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               child: GestureDetector(
//                 onTap: () {
//                   Calculation outputValue;
//                   selectedFuel == Fuel.ms ? ms : hsd;
//                   outputValue = Calculation(
//                       inputValue: inputValue, fuelType: selectedFuel);
//                 },
//                 // double outputValue = outputValue.calculateVOLUME,
//                 child: const Center(
//                   child: Text(
//                     'Get Volume',
//                     style: kButtonTextStyle,
//                   ),
//                 ),
//               ),
//               margin: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: kActiveCardColor,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               child: const Center(
//                 child: Text(
//                   'Result',
//                   style: kButtonTextStyle,
//                 ),
//               ),
//               width: double.infinity,
//               padding: const EdgeInsets.all(15),
//               margin: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: kActiveCardColor,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
