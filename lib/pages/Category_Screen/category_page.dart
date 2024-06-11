import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:e_commerce/pages/Home_Screen/children_category.dart';
import 'package:e_commerce/pages/Home_Screen/men_category.dart';
import 'package:e_commerce/pages/Home_Screen/women_category.dart';
import 'package:e_commerce/pages/Search_Sreen/search_page.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
    bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          text: 'B&S',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => {
                setState(
                  () {
                    isFavorite = !isFavorite;
                  },
                ),
              },
              icon: isFavorite
                  ? const Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_border),
              style: const ButtonStyle(
                iconColor: WidgetStatePropertyAll(Colors.grey),
                iconSize: WidgetStatePropertyAll(30),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          GestureDetector(onTap: () {
                Navigator.pushNamed(context, SearchPage.routeName);
              },
            child: const MySearchBar()),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, MenCategory.routeName);
            },
            child: Image.asset(
              'assets/category_screen/men category.png',
              width: 333,
              height: 179,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              'Fashion Men',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, WomenCategory.routeName);
            },
            child: Image.asset(
              'assets/category_screen/women category.png',
              width: 333,
              height: 179,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              'Fashion Women',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ChildrenCategory.routeName);
            },
            child: Image.asset(
              'assets/category_screen/children category.png',
              width: 333,
              height: 179,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              'Fashion Children',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
