import 'package:flutter/material.dart';

class SmallTextField extends StatelessWidget {
  const SmallTextField({
    super.key,
    required this.lablelText,
  });
  final String lablelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 142,
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          label: Text(
            lablelText,
            style: const TextStyle(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          filled: true,
          suffixIcon: null,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
