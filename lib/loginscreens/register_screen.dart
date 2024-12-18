import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  final bool isChecked = true;

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
            SizedBox(
              height: height * 0.010,
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
            CustomTextField(
              label: 'First Name',
              onTapDropDown: () {},
              icon: Icons.person,
              obsecureText: false,
            ),
            SizedBox(
              height: height * 0.010,
            ),
            CustomTextField(
              label: 'Email',
              onTapDropDown: () {},
              icon: Icons.email,
              obsecureText: false,
            ),
            SizedBox(
              height: height * 0.010,
            ),
            CustomTextField(
              label: 'Password',
              icon: Icons.lock,
              onTapDropDown: () {},
              obsecureText: true,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 5, 0, 0),
              child: Text(
                softWrap: true,
                'A password must contain at least 8 characters, including an uppercase letter, a lowercase letter, and a special character.',
                style: TextStyle(color: Colors.grey, fontSize: 9),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  checkColor: Colors.white,
                  activeColor: const Color.fromARGB(255, 247, 19, 2),
                  onChanged: (value) {},
                ),
                const Text(
                  'Recieve News Letters & Special Offers',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            CustomElevatedButton(
              label: 'Register',
              onSelection: () {
                context.go('/LoginScreen/register/emailverification');
              },
              backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
              foregroundColor: Colors.white,
            ),
            const Text(
              'By Clicking The Register Button  You will accept Our Term & Conditions',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
