import 'package:e_commerce/pages/Cart_Screen/checkout_page.dart';
import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/created_for_you_mens.dart';
import 'package:e_commerce/Components/navigator_button.dart';
import 'package:e_commerce/Components/product_box_cart.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:e_commerce/Components/total_price_container.dart';
import 'package:e_commerce/pages/Search_Sreen/search_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  static const String routeName = 'CartScreen';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String? selectedValue;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        elevation: 0,
        centerTitle: true,
        title: const AppBarText(text: 'W in R '),
        leading: Row(
          children: [
            const Text(
              'Cart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              ' ($selectedValue Item)',
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            )
          ],
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SearchPage.routeName);
              },
              child: const MySearchBar()),
          const SizedBox(
            height: 10,
          ),
          const ProductBoxCart(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 55,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: DropdownButton(
                    elevation: 0,
                    hint: const Text('1'),
                    value: selectedValue,
                    items: const [
                      DropdownMenuItem(
                        value: '1',
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('2'),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Text('3'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        'Remove',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 91,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.black54,
                      ),
                      Text(
                        'Move to Fav',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const Divider(
            height: 25,
            thickness: 10,
          ),
          const Text(
            'We think you might like these',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          const CreatedForYouMens(),
          const SizedBox(
            height: 10,
          ),
          const TotalPriceContainer(),
          const SizedBox(
            height: 10,
          ),
          MyNavigatorButton(
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, CheckoutPage.routeName);
              },
              height: 49,
              width: 345,
              color: const Color(0xff0D4641),
              text: 'CHECKOUT'),
        ],
      ),
    );
  }
}
