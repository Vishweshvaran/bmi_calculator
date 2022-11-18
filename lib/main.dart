// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_calculator_new/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          thumbColor: Color(0xFFEB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayColor: Color(0x29EB1555),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: AnimatedSplashScreen(
        splash: Icon(Icons.speed_rounded, size: 150.0,color: Colors.white,),
        nextScreen: InputPage(),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: kActiveCardColour,
        duration: 5000,
      ),
    );
  }
}
