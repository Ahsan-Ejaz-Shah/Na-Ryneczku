import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton(
      {super.key,
      required this.label,
      required this.onSelectDrawerButtons,
      required this.fontWeight,
      required this.fontSize,
      required this.color});
  final String label;
  final void Function() onSelectDrawerButtons;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onSelectDrawerButtons,
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
