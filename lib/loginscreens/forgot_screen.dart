import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    void _ResetPass() {
      context.go('/LoginScreen/forgotpassword/resetpassword');
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.jpg',
                height: height * 0.50,
                width: width * 0.60,
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              'Na Ryneczku',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
                color: Color.fromRGBO(118, 151, 104, 1),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Dont Worry It Occurs.Please Enter The Email Address Linked To Your Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            CustomTextField(
              label: 'Email',
              icon: Icons.email,
              obsecureText: false,
              onTapDropDown: (){},
            ),
             SizedBox(
              height: height * 0.025,
            ),
            CustomElevatedButton(
              label: 'Send Verification Email',
              backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
              foregroundColor: Colors.white,
              onSelection: () {
                context.go('/LoginScreen/forgotpassword/emailverification');
                Timer(const Duration(seconds: 2), _ResetPass);
              },
            ),
          ],
        ),
      ),
    );
  }
}
