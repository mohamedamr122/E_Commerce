import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  final String labelText;
  // final String errorMessage;
  const TextFieldPassword({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.visibility_off,
          ),
        ),
        label: Text(labelText),
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
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(193, 193, 193, 1),
          ),
        ),
        filled: true,
        fillColor: const Color.fromARGB(77, 193, 193, 193),
      ),
    );
  }
}
