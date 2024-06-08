import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({
    
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return GradientText(
      text,
      colors: const [
        Color.fromRGBO(23, 78, 73, 1),
        Color.fromRGBO(10, 85, 79, 0),
      ],
      style: const TextStyle(
        fontSize: 31.3,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
