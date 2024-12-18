import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                color: Colors.white70,
                // shadowColor: Colors.grey,
                margin: const EdgeInsets.all(10),
                elevation: 4,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Profile Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Seller Settings',
                      icon: FontAwesomeIcons.userCog,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'User Profile',
                      icon: FontAwesomeIcons.userCog,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Change Password',
                      icon: FontAwesomeIcons.lock,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Default Role',
                      icon: FontAwesomeIcons.userCog,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Push Notification',
                      icon: FontAwesomeIcons.listAlt,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Email Notification',
                      icon: FontAwesomeIcons.mailBulk,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                color: Colors.white70,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'More Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Privacy Policy',
                      icon: FontAwesomeIcons.userCog,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Terms & Condition',
                      icon: FontAwesomeIcons.userCog,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Delete Account',
                      icon: FontAwesomeIcons.trash,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
