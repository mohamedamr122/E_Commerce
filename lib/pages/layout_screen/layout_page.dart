import 'package:e_commerce/pages/Category_Screen/category_page.dart';
import 'package:e_commerce/pages/Home_Screen/account_page.dart';
import 'package:e_commerce/pages/Cart_Screen/cart_page.dart';
import 'package:e_commerce/pages/Home_Screen/home_page.dart';
import 'package:e_commerce/pages/Home_Screen/sells_page.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  static const String routeName = 'LayoutPage';

  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  final navPages = [
    const HomePage(),
    const SellsPage(),
    const CategoryScreen(),
    const AccountPage(),
    const CartPage()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedFontSize: 15,
        backgroundColor: Colors.grey[30],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset(
              'assets/layout_screen/Home(2).png',
              color:
                  _selectedIndex == 0 ? const Color(0xff0D4641) : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Sells',
            icon: Image.asset(
              'assets/layout_screen/Percentage.png',
              color:
                  _selectedIndex == 1 ? const Color(0xff0D4641) : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Image.asset(
              'assets/layout_screen/Categorize.png',
              color:
                  _selectedIndex == 2 ? const Color(0xff0D4641) : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Image.asset(
              'assets/layout_screen/Customer.png',
              color:
                  _selectedIndex == 3 ? const Color(0xff0D4641) : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Image.asset(
              'assets/layout_screen/Shopping Cart.png',
              color:
                  _selectedIndex == 4 ? const Color(0xff0D4641) : Colors.grey,
            ),
          ),
        ],
      ),
      body: navPages[_selectedIndex],
    );
  }
}
