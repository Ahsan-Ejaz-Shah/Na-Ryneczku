import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  @override
  CustomElevatedButton({
    required this.label,
    required this.onSelection,
    this.backgroundColor,
    this.foregroundColor,
  });
  final void Function() onSelection;
  final String label;
  final Color? backgroundColor, foregroundColor;
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onSelection,
      //icon: Icon(Icons.send, color: Colors.white),
      label: Text(
        label,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        fixedSize: const Size(350, 60),

        //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
