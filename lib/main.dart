import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff24263B)),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      debugShowCheckedModeBanner: false,

      home: Home(),
    ),
  );
}