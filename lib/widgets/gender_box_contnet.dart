import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderBoxContnet extends StatelessWidget {
  final String gender;
  final IconData genderIcon;
  const GenderBoxContnet({
    super.key,
    required this.gender,
    required this.genderIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        FaIcon(genderIcon, size: 70),
        SizedBox(height: 15),
        Text(gender, style: labelStyle),
      ],
    );
  }
}
