import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/result.dart';

class CalculateButton extends StatelessWidget {
  final String title;
  final void Function()? onPress;
  const CalculateButton({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
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