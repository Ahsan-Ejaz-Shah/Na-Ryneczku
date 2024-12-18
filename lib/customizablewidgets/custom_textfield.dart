import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, 
    this.label,
    this.icon,
    required this.obsecureText,
    this.hintText,
    this.maxLine = 1,
    this.inputType, 
    this.suffixIcon,
    required this.onTapDropDown,
    this.readOnly =false,

  });
  final String? label;
  final String? hintText;
  final IconData? icon;
  final int maxLine;
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final void Function() onTapDropDown;
  final bool readOnly;
  

  bool obsecureText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextField(
        readOnly: readOnly,
        onTap: onTapDropDown,
        keyboardType: inputType,
        
        maxLines: maxLine,
        obscureText: obsecureText,
        decoration: InputDecoration(
          
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          labelText: label,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(
            icon,
            color: const Color.fromRGBO(118, 151, 104, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(
          //       color: Color.fromRGBO(118, 151, 104, 1), width: 2),
          //   borderRadius: BorderRadius.circular(24),
          // ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromRGBO(118, 151, 104, 1), width: 2),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
