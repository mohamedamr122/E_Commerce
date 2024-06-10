import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/Components/navigator_button.dart';
import 'package:e_commerce/Components/small_text_field.dart';
import 'package:e_commerce/pages/Orders_Pages/orders_page.dart';
import 'package:flutter/material.dart';

class NewCardPage extends StatelessWidget {
  const NewCardPage({super.key});
  static const String routeName = 'NewCardPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          text: 'BSB',
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const Text(
            'Add a new card',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'We Accept',
            style: TextStyle(
                fontSize: 11, fontWeight: FontWeight.w300, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/checkout_screen/visa.png'),
              Image.asset('assets/checkout_screen/mastercard.png'),
              Image.asset('assets/checkout_screen/telda.png')
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Card Number',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xff4B4B4B),
              ),
            ),
          ),
          MyTextField(
            lablelText: 'Enter your card number',
            obscureText: false,
            suffixIcon: null,
            fillColor: Colors.white,
            validator: null,
            controller: null,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Expiry',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B4B4B),
                      ),
                    ),
                  ),
                  SmallTextField(
                    lablelText: 'MM/YY',
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'CVV',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B4B4B),
                      ),
                    ),
                  ),
                  SmallTextField(
                    lablelText: 'Secure Code',
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Remember this card',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'BSB STORE will securely store this card for a faster payment experience. Your CV number will not be stored.',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          MyNavigatorButton(
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, OrdersPage.routeName);
              },
              height: 57,
              width: 333,
              color: const Color(0xff0D4641),
              text: 'ADD MY CARD')
        ],
      ),
    );
  }
}
