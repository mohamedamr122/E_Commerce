import 'package:e_commerce/Cart_Screen/cart_page.dart';
import 'package:e_commerce/Home_Screen/children_category.dart';
import 'package:e_commerce/Home_Screen/home_page.dart';
import 'package:e_commerce/Home_Screen/layout_page.dart';
import 'package:e_commerce/Home_Screen/men_category.dart';
import 'package:e_commerce/Home_Screen/overview_page.dart';
import 'package:e_commerce/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B&SStore',
      debugShowCheckedModeBanner: false,
      initialRoute: CartPage.routeName,
      routes: routes,
    );
  }
}
