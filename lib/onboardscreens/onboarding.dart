import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class OnBoarding extends StatelessWidget {
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
              fit: BoxFit.contain,
              height: height * 0.50,
              width: width * 0.60,
            ),
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
            height: height * 0.1,
          ),
          IconButton(
            onPressed: () {
              context.go('/onBoardSec');
            },
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
            ),
            icon:  const Icon(
              Icons.navigate_next,
              size: 38,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
