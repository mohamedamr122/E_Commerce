import 'package:flutter/material.dart';

class OverviewProductPhoto extends StatelessWidget {
  const OverviewProductPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/main_screen/T-Shirt.jpg',
            height: 308,
            width: 250,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        IconButton(
          highlightColor: const Color.fromARGB(255, 30, 107, 101),
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline_rounded,
            size: 35,
          ),
        ),
      ],
    );
  }
}
