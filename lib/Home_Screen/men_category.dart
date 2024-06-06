import 'package:e_commerce/Components/categories_shop.dart';
import 'package:e_commerce/Components/created_for_you_mens.dart';
import 'package:e_commerce/Components/product_list_view.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MenCategory extends StatelessWidget {
  static const String routeName = 'Men Category';
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: GradientText(
          'Men',
          colors: const [
            Color.fromRGBO(23, 78, 73, 1),
            Color.fromRGBO(10, 85, 79, 0),
          ],
          style: const TextStyle(
            fontSize: 31.3,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.favorite_border),
              style: const ButtonStyle(
                iconColor: WidgetStatePropertyAll(Colors.grey),
                iconSize: WidgetStatePropertyAll(30),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 22, left: 22),
        children: [
          const MySearchBar(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1.0,
                width: 70.0,
                color: const Color.fromRGBO(23, 78, 73, 1),
              ),
              const Text(
                'SHOP ALL CATEGORIES',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(52, 64, 84, 1),
                ),
              ),
              Container(
                height: 1.0,
                width: 70.0,
                color: const Color.fromRGBO(23, 78, 73, 1),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CategoriesShop(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Created For You',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(52, 64, 84, 1),
                ),
              ),
              Container(
                height: 40,
                width: 106,
                color: const Color.fromRGBO(23, 78, 73, 1),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CreatedForYouMens(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1.0,
                width: 70.0,
                color: const Color.fromRGBO(23, 78, 73, 1),
              ),
              const Text(
                'SHOP ALL CATEGORIES',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(52, 64, 84, 1),
                ),
              ),
              Container(
                height: 1.0,
                width: 70.0,
                color: const Color.fromRGBO(23, 78, 73, 1),
              ),
            ],
          ),
          const ProductListView(),
        ],
      ),
    );
  }
}
