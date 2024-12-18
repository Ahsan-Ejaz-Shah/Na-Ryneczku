import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingThree extends StatelessWidget {
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
              width: width * 0.60
            ),
          ),
          const Text(
            'Find Freshness Near You!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Color.fromRGBO(118, 151, 104, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              softWrap: true,
              textAlign: TextAlign.center,
              'Explore nearby stalls, check available products, and easily shop for the freshest fruits and vegetables in your area. Healthy living made simple.',
              style: TextStyle(
                color: Color.fromRGBO(148, 148, 148, 1),
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      context.go('/onBoardSec');
                    },
                    style:
                        IconButton.styleFrom(backgroundColor: Colors.black12),
                    icon: const Icon(
                      Icons.navigate_before,
                      size: 45,
                      color: Color.fromRGBO(118, 151, 104, 1),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.go('/LoginScreen');
                    },
                    label: const Text(
                      'Next',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    icon: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      minimumSize:
                          const Size(140, 50), // Consistent button size
                      backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
