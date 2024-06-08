import 'package:e_commerce/Components/category_image.dart';
import 'package:flutter/material.dart';

class CategoriesWomenShop extends StatelessWidget {
  const CategoriesWomenShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: const CategoryImage(
                  height: 64,
                  width: 64,
                  imagePass: 'assets/main_screen/w_T-shirts.png',
                  type: 'T-Shirt',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: const CategoryImage(
                  height: 64,
                  width: 64,
                  imagePass: 'assets/main_screen/w_Bluoses.png',
                  type: 'Bluoses',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: const CategoryImage(
                  height: 64,
                  width: 64,
                  imagePass: 'assets/main_screen/w_coats.png',
                  type: 'coats',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: const CategoryImage(
                  height: 64,
                  width: 64,
                  imagePass: 'assets/main_screen/w_dress.png',
                  type: 'dress',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: const CategoryImage(
                  height: 64,
                  width: 64,
                  imagePass: 'assets/main_screen/w_suits.png',
                  type: 'suits',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
