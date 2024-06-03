import 'package:flutter/material.dart';

class MenCategoryImage extends StatelessWidget {
  final String imagePass;
  final String type;
  const MenCategoryImage(
      {super.key, required this.imagePass, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePass,
            width: 64,
            height: 64,
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
