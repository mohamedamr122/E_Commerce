// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final String lablelText;
  final String? Function(String?)? validator;
  final Color? fillColor;
  Widget? suffixIcon;
  MyTextField({
    super.key,
    required this.fillColor,
    required this.suffixIcon,
    required this.lablelText,
    required this.obscureText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: Text(
          lablelText,
          style: const TextStyle(color: Colors.grey),
        ),
        labelStyle: const TextStyle(
          color: Color.fromRGBO(80, 80, 80, 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(193, 193, 193, 0.6),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black12),
        ),
        filled: true,
        fillColor: fillColor,
      ),
    );
  }
}
