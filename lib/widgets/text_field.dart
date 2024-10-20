import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Color? fillColor;
  final bool filled;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? textFieldPadding;
  final double borderRadius; // Added property

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.hintStyle,
    this.textStyle,
    this.fillColor,
    this.filled = true,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
    this.obscureText = false,
    this.keyboardType,
    this.textFieldPadding,
    required this.borderRadius, // Added required borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textFieldPadding ?? const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          filled: filled,
          fillColor: fillColor,
          contentPadding: contentPadding ?? const EdgeInsets.all(12),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius:
                    BorderRadius.circular(borderRadius), // Using borderRadius
              ),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius:
                    BorderRadius.circular(borderRadius), // Using borderRadius
              ),
        ),
      ),
    );
  }
}
