import 'package:flutter/material.dart';
import 'package:onboard/onboardscreens/onboarding.dart';

class OnBoard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnBoarding(),
    );
  }
}