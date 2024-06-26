import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/brands_grid.dart';
import 'package:e_commerce/Components/card_view.dart';
import 'package:e_commerce/Components/feature_products.dart';
import 'package:e_commerce/Components/home_screen_category_top.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:e_commerce/pages/Home_Screen/men_category.dart';
import 'package:e_commerce/pages/Home_Screen/sells_page.dart';
import 'package:e_commerce/pages/Search_Sreen/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'HomePage';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: const AppBarText(text: 'W in R'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.chat_outlined),
          style:
              const ButtonStyle(iconColor: WidgetStatePropertyAll(Colors.grey)),
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
      body: Padding(
        padding: const EdgeInsets.only(right: 22, left: 22,bottom: 8),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SearchPage.routeName);
                },
                child: const MySearchBar()),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MenCategory.routeName);
                  },
                  child: const CategoryImage(
                    imagePass: 'assets/main_screen/men.png',
                    type: 'Men',
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const CategoryImage(
                  imagePass: 'assets/main_screen/woman.jpg',
                  type: 'Women',
                ),
                const SizedBox(
                  width: 30,
                ),
                const CategoryImage(
                  imagePass: 'assets/main_screen/children.jpg',
                  type: 'Children',
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardView(
                    contentText: 'Fashion Men',
                    imagePass: 'assets/main_screen/fashion_men.jpg',
                    onTap: () {
                      Navigator.pushNamed(context, MenCategory.routeName);
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  CardView(
                    contentText: 'New Collection',
                    imagePass: 'assets/main_screen/Woman_New_Collection.jpg',
                    onTap: () {
                      // Navigator.pushNamed(context, MenCategory.routeName);
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  'Your Favourite Brands',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BrandsGrid(brandName: 'Nike'),
                BrandsGrid(brandName: 'Zara'),
                BrandsGrid(brandName: 'H&M'),
              ],
            ),
            const SizedBox(height: 17),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BrandsGrid(brandName: 'Bershka'),
                BrandsGrid(brandName: 'Adidas'),
                BrandsGrid(brandName: 'Gucci'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  'Feature Products',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeatureProducts(
                    imagePass: 'assets/main_screen/blouse.jpg',
                    itemName: 'Blouse',
                    itemPrice: '2000 EGP',
                  ),
                  SizedBox(width: 20),
                  FeatureProducts(
                    imagePass: 'assets/main_screen/Kraft.jpg',
                    itemName: 'Kraft',
                    itemPrice: '200 EGP',
                  ),
                  SizedBox(width: 20),
                  FeatureProducts(
                    imagePass: 'assets/main_screen/Dress.jpg',
                    itemName: 'Dress',
                    itemPrice: '400 EGP',
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Sells',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => {
                Navigator.pushNamed(context, SellsPage.routeName)
              },
              child: const ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image(
                  width: double.infinity,
                  height: 163,
                  image: AssetImage('assets/main_screen/Sells.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
