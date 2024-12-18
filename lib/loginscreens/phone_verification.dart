import 'package:flutter/material.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.jpg',
                height: height * 0.5,
                width: width * 0.6,
              ),
            ),
            SizedBox(height: height * 0.025),
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
              'Phone Number Verification',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(height: height * 0.025),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Please Enter Your Phone Number Below',
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
            Stack(
              children: [
                CustomTextField(
                  label: 'Phone Number',
                  icon: Icons.phone,
                  obsecureText: false,
                  onTapDropDown: () {},
                ),
                Positioned(
                  right: 20,
                  bottom: 5,
                  left: 270,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Code',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 247, 19, 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.025,
            ),
            CustomElevatedButton(
              label: 'Send Code',
              onSelection: () {},
              backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
              foregroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
