import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final Color borderColor; // Add dynamic border color
  final double borderWidth; // Add dynamic border width
  final IconData icon;
  final Color iconColor;

  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.color,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: Center(
        child: FaIcon(
          icon,
          color: iconColor,
          size: 50,
        ),
      ),
    );
  }
}
