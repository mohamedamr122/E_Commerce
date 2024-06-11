import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/categories_women_shop.dart';
import 'package:e_commerce/Components/created_for_you_womens.dart';
import 'package:e_commerce/Components/product_list_view.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:e_commerce/pages/Search_Sreen/search_page.dart';
import 'package:flutter/material.dart';

class WomenCategory extends StatefulWidget {
  static const String routeName = 'WomenCategory';
  const WomenCategory({super.key});

  @override
  State<WomenCategory> createState() => _WomenCategoryState();
}

class _WomenCategoryState extends State<WomenCategory> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: const AppBarText(text: 'Women'),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const RangeMaintainingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SearchPage.routeName);
                    },
                    child: const MySearchBar()),
                const SizedBox(
                  height: 20,
                ),
                SliverToBoxAdapter(
                  child: Row(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const CategoriesWomenShop(),
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
                const CreatedForYouWomens(),
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
              ]),
            ),
            ProductListView(),
          ],
        ),
      ),
    );
  }
}
