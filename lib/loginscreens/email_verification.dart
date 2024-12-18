import 'package:flutter/material.dart';

import 'package:onboard/customizablewidgets/custom_elevated_button.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
            'Email Verification',
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
              'A verification link has been sent to your email. Please check your email and follow the instructions.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          CustomElevatedButton(
            label: 'Resend Email',
            onSelection: () {
              
            },
            backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
            foregroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
