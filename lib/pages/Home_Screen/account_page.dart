import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/item_button.dart';
import 'package:e_commerce/pages/Orders_Pages/orders_page.dart';
import 'package:e_commerce/pages/Payment_Pages/payment_page.dart';
import 'package:e_commerce/pages/Edit_page/edit_profile_page.dart';
import 'package:e_commerce/pages/Setting_Pages/setting_page.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const AppBarText(text: 'B S B'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/account_screen/Ellipse 203.png'),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nabil edris',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '*****@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, EditProfilePage.routeName);
                  },
                  child: Container(
                    width: 45,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff0D4641)),
                    child: const Center(
                        child: Text(
                      'Edit',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ItemButton(
            onPressed: () {
              Navigator.pushNamed(context, OrdersPage.routeName);
            },
            text: 'Orders',
            icon: const Icon(
              Icons.fact_check_outlined,
              color: Colors.black,
              size: 50,
            ),
          ),
          const Divider(color: Colors.black, height: 50, thickness: 0.5),
          ItemButton(
            onPressed: () {
              Navigator.pushNamed(context, PaymentPage.routName);
            },
            text: 'Payment',
            icon: const Icon(
              Icons.payment_rounded,
              color: Colors.black,
              size: 50,
            ),
          ),
          const Divider(color: Colors.black, height: 50, thickness: 0.5),
          ItemButton(
            onPressed: () {
              Navigator.pushNamed(context, SettingPage.routeName);
            },
            text: 'Setting',
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
