import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/upload_product_page.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});
  static const String routeName = 'AdminHomePage';

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarText(text: 'B&S'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Image.asset('assets/🦆 icon _Chat bot_.png'),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_border_rounded))
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  width: 169,
                  color: Color(0xffD9D9D9),
                ),
                Container(
                  height: 120,
                  width: 169,
                  color: Color(0xffD9D9D9),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  width: 169,
                  color: Color(0xffD9D9D9),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, UploadProductPage.routeName);
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    color: Color(0xffD9D9D9),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
