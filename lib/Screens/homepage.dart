import 'package:flutter/material.dart';
import 'package:mapping_app/Constants/colors.dart';
import 'package:mapping_app/Widgets/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: headingTextFont("This is my homepage", 40)
      ),
    );
  }
}
