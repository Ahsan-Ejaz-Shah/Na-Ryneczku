import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
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
              child: Image.asset('assets/images/logo.jpg',
                  //fit: BoxFit.contain,
                  height: height * 0.50,
                  width: width * 0.60),
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
            CustomTextField(
                label: 'Email',
                icon: Icons.email,
                obsecureText: false,
                onTapDropDown: () {}),
            SizedBox(
              height: height * 0.010,
            ),
            CustomTextField(
              label: 'Password',
              icon: Icons.lock,
              obsecureText: true,
              onTapDropDown: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    checkColor: Colors.white,
                    activeColor: const Color.fromARGB(255, 247, 19, 2),
                    onChanged: (value) {},
                  ),
                  const Text(
                    'Remember Me',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    width: width * 0.30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.go('/LoginScreen/forgotpassword');
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 247, 19, 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              label: 'Login',
              onSelection: () {
                context.go('/LoginScreen/rolescreen');
              },
              backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
              foregroundColor: Colors.white,
            ),
            TextButton(
              onPressed: () {
                context.go('/LoginScreen/register');
              },
              child: const Text(
                'Dont Have An Account? Create One',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
