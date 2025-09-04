import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/logic/bmi_brain.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/widgets/calc_button.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/custom_icon_button.dart';
import 'package:bmi_calculator/widgets/gender_box_contnet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int height = 150;
  int age = 17;
  int weight = 40;
  Gender selectedGender = Gender.male;
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
                    cardColor: selectedGender == Gender.male
                        ? secoundryColor
                        : background_card_color,
                    ontap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: GenderBoxContnet(
                      gender: 'Male',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Custom_card(
                    cardColor: selectedGender == Gender.female
                        ? secoundryColor
                        : background_card_color,
                    ontap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },

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
            child: Row(
              children: [
                Expanded(
                  child: Custom_card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text('Height', style: labelStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: numberStyle),
                            Text('cm'),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 6,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 20,
                            ),
                            activeTrackColor: Color(0xffE83D67),
                            inactiveTrackColor: Colors.white,
                            thumbColor: Color(0xffE83D67),
                          ),
                          child: Slider(
                            min: 120,
                            max: 200,
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                          ),
                        ),
                      ],
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
                  child: Custom_card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Weight', style: labelStyle),
                        Text(weight.toString(), style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            CustomIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (weight > 40) --weight;
                                });
                              },
                            ),

                            CustomIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  if (weight < 150) ++weight;
                                });
                              },
                            ),
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
                        Text(age.toString(), style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age = age > 17 ? age - 1 : age;
                                });
                              },
                            ),

                            CustomIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age = age < 80 ? age + 1 : age;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            title: 'Calculate',
            onPress: () {
              BMICalculator bmiCalc = BMICalculator(
                height: height,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                      bmi: bmiCalc.bmi,
                      resultClass: bmiCalc.getResult(),
                      advice: bmiCalc.getAdvice(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}