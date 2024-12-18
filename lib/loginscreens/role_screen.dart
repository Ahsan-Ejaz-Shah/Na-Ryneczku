import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_container.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';

class RoleScreen extends StatefulWidget {
  const RoleScreen({super.key});

  @override
  State<RoleScreen> createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
  String selectedRole = "";

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
              width: width * 0.6,
              height: height * 0.5,
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          const Text(
            'Na Ryneczku',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,
              color: Color.fromRGBO(118, 151, 104, 1),
            ),
          ),
          SizedBox(height: height * 0.005),
          const Text(
            'Select Your Role',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          SizedBox(height: height * 0.005),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.go('/HomeScreen');
                },
                child: CustomContainer(
                  width: width * 0.3,
                  height: height * 0.2,
                  borderRadius: 24,
                  color: Colors.white,
                  borderColor: selectedRole == "Seller"
                      ? const Color.fromRGBO(118, 151, 104, 1)
                      : Colors.grey,
                  borderWidth: selectedRole == "Seller" ? 3 : 1,
                  icon: FontAwesomeIcons.shop,
                  iconColor: const Color.fromRGBO(118, 151, 104, 1),
                ),
              ),
              SizedBox(width: width * 0.1),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedRole = "Buyer";
                  });
                },
                child: CustomContainer(
                  width: width * 0.3,
                  height: height * 0.2,
                  borderRadius: 24,
                  color: const Color.fromRGBO(118, 151, 104, 1),
                  borderColor: selectedRole == "Buyer"
                      ? Colors.white
                      : Colors.transparent,
                  borderWidth: selectedRole == "Buyer" ? 3 : 0,
                  icon: FontAwesomeIcons.bagShopping,
                  iconColor: Colors.white,
                ),
              ),
            ],
          ),
           SizedBox(height: height * 0.05),
          CustomElevatedButton(
            label: 'Submit',
            backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
            foregroundColor: Colors.white,
            onSelection: () {
              if (selectedRole.isNotEmpty) {
                // Logic when a role is selected
                print('Selected Role: $selectedRole');
              } else {
                // Show a message if no role is selected
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please select a role!'),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
