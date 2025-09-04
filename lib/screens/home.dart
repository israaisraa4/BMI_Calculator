import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/widgets/calc_button.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/custom_icon_button.dart';
import 'package:bmi_calculator/widgets/gender_box_contnet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Custom_card(
                    child: GenderBoxContnet(
                      gender: 'Male',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Custom_card(
                    child: GenderBoxContnet(
                      gender: 'Female',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Custom_card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: labelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('150', style: numberStyle),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
                      activeTrackColor: Color(0xffE83D67),
                      inactiveTrackColor: Colors.white,
                      thumbColor: Color(0xffE83D67),
                    ),
                    child: Slider(
                      min: 130,
                      max: 200,
                      value: 150,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Custom_card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Weight', style: labelStyle),
                        Text('60', style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(iconData: FontAwesomeIcons.minus),

                            CustomIconButton(iconData: FontAwesomeIcons.plus),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Custom_card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text('Age', style: labelStyle),
                        Text('25', style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(iconData: FontAwesomeIcons.minus),

                            CustomIconButton(iconData: FontAwesomeIcons.plus),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(title: 'Calculate'),
        ],
      ),
    );
  }
}