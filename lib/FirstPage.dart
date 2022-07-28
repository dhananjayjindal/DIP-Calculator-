import 'package:flutter/material.dart';
import 'calculationHsd.dart';
import 'calculationMs.dart';
import 'constants.dart';

const kActiveCardColor = Colors.lightBlue;
const kSelectedCardColor = Color(0xFF0000f9);

enum Fuel { ms, hsd }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double inputMsValue = 0;
  double inputHsdValue = 0;
  String resultMsValue = "0";
  String resultHsdValue = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TANK VOLUME CALCULATOR'),
      ),
      body: Column(
        children: [
          MediaQuery.of(context).size;
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCardA(
                    colour: kActiveCardColor,
                    cardChild: CardChild(
                      label: 'MS',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardA(
                    colour: kActiveCardColor,
                    cardChild: CardChild(
                      label: 'HSD',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: TextField(
                        decoration: kTextFieldInputDecoration,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                        onChanged: (value) {
                          inputMsValue = double.parse(value);
                        },
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: TextField(
                        decoration: kTextFieldInputDecoration,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                        onChanged: (value) {
                          inputHsdValue = double.parse(value);
                        },
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        CalculationMs outputMsValue =
                            CalculationMs(inputMsValue: inputMsValue);
                        setState(() {
                          resultMsValue = outputMsValue.calculateMsVolume();
                        });
                      },
                      child: const Center(
                        child: Text(
                          'Get Volume',
                          style: kButtonTextStyle,
                        ),
                      ),
                    ),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        CalculationHsd outputHsdValue =
                            CalculationHsd(inputHsdValue: inputHsdValue);
                        setState(() {
                          resultHsdValue = outputHsdValue.calculateHsdVolume();
                        });
                      },
                      child: const Center(
                        child: Text(
                          'Get Volume',
                          style: kButtonTextStyle,
                        ),
                      ),
                    ),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        resultMsValue,
                        style: kButtonTextStyle,
                      ),
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        resultHsdValue,
                        style: kButtonTextStyle,
                      ),
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kActiveCardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
