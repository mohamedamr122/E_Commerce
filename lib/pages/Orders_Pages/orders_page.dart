import 'package:e_commerce/pages/Orders_Pages/details_page.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});
  static const routeName = 'OrdersPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Orders',
          style: TextStyle(
              fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Orders ***************',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Place On Aug 22, 2023',
                    style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, DetailsPage.routeName);
                },
                child: const Text(
                  'View Details >',
                  style: TextStyle(
                      color: Color(0xff2E1CFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/order_screen/photo.png'),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AMERICAN Eagle',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'T-shirt',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cancelled',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
