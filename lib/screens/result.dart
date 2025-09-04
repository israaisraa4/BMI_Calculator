import 'package:bmi_calculator/widgets/calc_button.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final String result;
  final String advice;

  const ResultScreen({
    super.key,
    required this.bmi,
    required this.result,
    required this.advice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Custom_card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff24D876),
                    ),
                  ),
                  Text(
                    bmi.toString(),
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  Text(advice, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          CalculateButton(
            title: 'RE-calculate',
        //   onPress: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}