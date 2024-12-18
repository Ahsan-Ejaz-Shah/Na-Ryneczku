import 'package:flutter/material.dart';
import 'package:onboard/loginscreens/login_screen.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginScreen(),
    );
  }
}