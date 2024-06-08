import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/categories_men_shop.dart';
import 'package:e_commerce/Components/product_list_view.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:flutter/material.dart';

class ChildrenCategory extends StatelessWidget {
  static const String routeName = 'ChildrenCategory';
  const ChildrenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: const AppBarText(text: 'Childern'),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const RangeMaintainingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
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
                  const CategoriesMenShop(),
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
                ],
              ),
            ),
            const ProductListView(),
          ],
        ),
      ),
    );
  }
}
