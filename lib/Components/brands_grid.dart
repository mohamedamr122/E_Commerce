import 'package:flutter/material.dart';

class BrandsGrid extends StatelessWidget {
  final String brandName;
  const BrandsGrid({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 95,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Color.fromRGBO(217, 217, 217, 1),
      ),
      child: Center(
        child: Text(
          brandName,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
