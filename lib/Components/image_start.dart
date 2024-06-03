import 'package:flutter/material.dart';

class ImageStart extends StatelessWidget {
  final String imagepass = '';
  const ImageStart({super.key, required imagepass});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(181, 11, 36, 34),
        image: DecorationImage(
          image: AssetImage(imagepass),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
