import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});
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
                width: width * 0.6,
                height: height * 0.5,
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
              height: height * 0.010,
            ),
            const Text(
              'Reset Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height * 0.010,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Your Password Must Be Unique To Previously Used',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            CustomTextField(
              label: 'New Password',
              icon: Icons.lock,
              obsecureText: true,
              onTapDropDown: () {},
            ),
            SizedBox(
              height: height * 0.010,
            ),
            CustomTextField(
                label: 'Confirm Password',
                icon: Icons.lock,
                obsecureText: true,
                onTapDropDown: () {}),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 5, 0, 0),
              child: Text(
                softWrap: true,
                'A password must contain at least 8 characters, including an uppercase letter, a lowercase letter, and a special character.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 9,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            CustomElevatedButton(
              label: 'Submit',
              onSelection: () {
                context.go(
                    '/LoginScreen/forgotpassword/resetpassword/phoneverification');
              },
              backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
              foregroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
