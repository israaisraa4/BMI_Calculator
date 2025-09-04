import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_card extends StatelessWidget {
  Widget child;
  Custom_card({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: background_card_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}