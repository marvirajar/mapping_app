import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapping_app/Widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return animatedSplashScreen();
  }

  }

