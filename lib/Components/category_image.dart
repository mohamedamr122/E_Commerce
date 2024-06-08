import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  final String imagePass;
  final String type;
  final double width;
  final double height;
  const CategoryImage(
      {super.key,
      required this.imagePass,
      required this.type,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePass,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          type,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color.fromRGBO(13, 70, 65, 1),
          ),
        ),
      ],
    );
  }
}
