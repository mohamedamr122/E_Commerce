import 'package:e_commerce/Components/brands_grid.dart';
import 'package:e_commerce/Components/card_view.dart';
import 'package:e_commerce/Components/feature_products.dart';
import 'package:e_commerce/Components/home_screen_category_top.dart';
import 'package:e_commerce/Home_Screen/men_category.dart';
// import 'package:e_commerce/Home_Screen/account.dart';
// import 'package:e_commerce/Home_Screen/cart.dart';
// import 'package:e_commerce/Home_Screen/sells.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _currentIndex = 0;
  // final taps = [HomeScreen(), Sells(), Cart(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: GradientText(
          'B & S',
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
        padding: const EdgeInsets.only(right: 22, left: 22),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(72, 158, 158, 158),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                cursorColor: const Color.fromRGBO(23, 78, 73, 1),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                  hintStyle: const TextStyle(fontSize: 17),
                  hintText: 'Search your trips',
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.mic,
                      color: Color.fromRGBO(106, 106, 106, 1),
                    ),
                    onPressed: () => {},
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenCategory(),
                      ),
                    );
                  },
                  child: const CategoryImage(
                    imagePass: 'assets/main_screen/men.jpg',
                    type: 'Men',
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const CategoryImage(
                  imagePass: 'assets/main_screen/woman.jpg',
                  type: 'women',
                ),
                const SizedBox(
                  width: 30,
                ),
                const CategoryImage(
                  imagePass: 'assets/main_screen/children.jpg',
                  type: 'children',
                ),
              ],
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardView(
                    contentText: 'Fashion Men',
                    imagePass: 'assets/main_screen/fashion_men.jpg',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CardView(
                    contentText: 'New Collection',
                    imagePass: 'assets/main_screen/Woman_New_Collection.jpg',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CardView(
                    contentText: 'Fashion Men',
                    imagePass: 'assets/main_screen/fashion_men.jpg',
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
              onTap: () => {},
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
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}