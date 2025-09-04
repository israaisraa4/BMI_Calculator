import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final String title;
  const CalculateButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/result');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: secoundryColor,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}