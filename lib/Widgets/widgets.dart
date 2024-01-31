import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import '../Constants/colors.dart';
import '../Screens/homepage.dart';

//Splash Screen Animation Controller
Widget animatedSplashScreen() {
  return AnimatedSplashScreen(
    splashIconSize: 260,
    splash: Image.asset(
      "assets/images/mehran_logo.png",
    ),
    backgroundColor: bgColor,
    splashTransition: SplashTransition.fadeTransition,
    duration: 400,
    nextScreen: const Homepage(),
  );
}

//Heading Text with custom font family
Widget headingTextFont(String yourText, double fontSize) {
  return Text(
    yourText,
    style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontFamily: 'heading',
        fontWeight: FontWeight.bold),
  );
}
