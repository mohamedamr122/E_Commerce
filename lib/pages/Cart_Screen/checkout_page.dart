import 'dart:ui';
import 'package:e_commerce/pages/Cart_Screen/add_address_page.dart';
import 'package:e_commerce/pages/Cart_Screen/new_card_page.dart';
import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/navigator_button.dart';
import 'package:e_commerce/Components/product_box_cart.dart';
import 'package:e_commerce/Components/total_price_container.dart';
import 'package:e_commerce/pages/Payment_Pages/payment_page.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});
  static const String routeName = 'CheckoutPage';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(text: 'CHECKOUT'),
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
          const Text(
            'Ship To',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Image.asset(
                    'assets/checkout_screen/checkout.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AddAddressPage.routeName);
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  width: 186,
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        'Add address',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 30,
            thickness: 10,
          ),
          const Text(
            'Payment method',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(direction: Axis.horizontal, children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.circle_outlined)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 14.0),
                        child: Text(
                          'Credit Card',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                    const Icon(
                      Icons.credit_card_outlined,
                      color: Colors.grey,
                    )
                  ],
                ),
                const Divider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, NewCardPage.routeName);
                  },
                  child: const Text(
                    'Add a new Card',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff2722FF)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(direction: Axis.horizontal, children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.circle_outlined)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 14.0),
                        child: Text(
                          'Cash on Delivery',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                    Image.asset(
                        'assets/checkout_screen/🦆 icon _cash outline_.png')
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 30,
            thickness: 10,
          ),
          const Text(
            'Order Summary',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          const TotalPriceContainer(),
          const SizedBox(
            height: 10,
          ),
          MyNavigatorButton(
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, PaymentPage.routName);
              },
              height: 49,
              width: 345,
              color: const Color(0xff0D4641),
              text: 'PLACE ORDER'),
          const Divider(
            height: 30,
            thickness: 10,
          ),
          const Text(
            'Review your order',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          const ProductBoxCart(),
        ],
      ),
    );
  }
}
