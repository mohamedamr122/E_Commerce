import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});
  static const String routeName = 'DetailsPage';

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
          const Text(
            'Orders ***************',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Text(
            'Place On Aug 22, 2023',
            style: TextStyle(
                color: Color(0xff808080),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Cancelled',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.red),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/order_screen/photo.png'),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'AMERICAN Eagle',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'T-shirt',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'EGP 150',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        '300',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '35% OFF',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff05BE39)),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Free delivery by',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        ' Fri, Nov 11.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff05BE39)),
                      ),
                    ],
                  ),
                  Text(
                    'Order in 9h 31m',
                    style: TextStyle(
                      color: Colors.grey[55],
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'Sold by ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        ' American Eagle',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 10,
            height: 20,
          ),
          const Text(
            'Payment Method',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              children: [
                Icon(
                  Icons.payment_rounded,
                  color: Color(0xff646464),
                ),
                Text(
                  'Credit Card',
                  style: TextStyle(
                      color: Color(0xff646464),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Image.asset('assets/order_screen/Group 33131.png'),
          const Divider(
            thickness: 10,
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Order Summary',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
              Text(
                '1 Item',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D8D8D)),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal (1 item)',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'EGP 150',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fee',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Free',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff05BE39)),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'EGP 150',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
