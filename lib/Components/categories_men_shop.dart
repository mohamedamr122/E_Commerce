import 'package:e_commerce/Components/category_image.dart';
import 'package:flutter/material.dart';

class CategoriesMenShop extends StatelessWidget {
  const CategoriesMenShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const CategoryImage(
                height: 97,
                width: 97,
                imagePass: 'assets/main_screen/T-Shirt.jpg',
                type: 'T-Shirt',
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: const CategoryImage(
                height: 97,
                width: 97,
                imagePass: 'assets/main_screen/Shirt.png',
                type: 'Shirt',
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: const CategoryImage(
                height: 97,
                width: 97,
                imagePass: 'assets/main_screen/Sweatshirts.png',
                type: 'Sweatshirts',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const CategoryImage(
                height: 97,
                width: 97,
                imagePass: 'assets/main_screen/T-Shirt.jpg',
                type: 'Fashion',
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: const CategoryImage(
                height: 97,
                width: 97,
                imagePass: 'assets/main_screen/Sport.png',
                type: 'Sport',
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: const CategoryImage(
                height: 97,
                width: 97,
                imagePass: 'assets/main_screen/Swimwear.png',
                type: 'Swimwear',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
