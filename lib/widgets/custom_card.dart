import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_card extends StatelessWidget {
  final Widget child;
  final void Function()? ontap;
  final Color cardColor;
  const Custom_card({
    super.key,
    required this.child,
    this.ontap,
    this.cardColor = const Color(0xff333244),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}