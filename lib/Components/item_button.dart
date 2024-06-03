import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemButton extends StatelessWidget {
  ItemButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.icon});
  void Function()? onPressed;
  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: const ButtonStyle(
          shadowColor: WidgetStatePropertyAll(Colors.white),
          overlayColor: WidgetStatePropertyAll(Colors.white),
          alignment: Alignment.topLeft,
          elevation: WidgetStatePropertyAll(0),
          backgroundColor: WidgetStatePropertyAll(Colors.white)),
      onPressed: onPressed,
      icon: icon,
      label: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xff272727),
        ),
      ),
    );
  }
}