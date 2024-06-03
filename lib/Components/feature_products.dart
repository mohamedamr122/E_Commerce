import 'package:flutter/material.dart';

class FeatureProducts extends StatelessWidget {
  final String imagePass;
  final String itemName;
  final String itemPrice;
  const FeatureProducts(
      {super.key,
      required this.imagePass,
      required this.itemName,
      required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => {},
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Image(
              width: 244,
              height: 163,
              image: AssetImage(imagePass),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          itemName,
          style: const TextStyle(fontSize: 19.3, fontWeight: FontWeight.w400),
        ),
        Text(
          itemPrice,
          style: const TextStyle(fontSize: 19.3, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
