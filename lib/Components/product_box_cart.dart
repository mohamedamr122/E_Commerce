import 'package:e_commerce/Home_Screen/overview_page.dart';
import 'package:flutter/material.dart';

class ProductBoxCart extends StatelessWidget {
  const ProductBoxCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OverviewPage.routeName);
            },
            child: Container(
              alignment: Alignment.topRight,
              width: 170,
              height: 254,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image:
                        AssetImage('assets/main_screen/PRINTED SHIRT.png')),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AMERICAN Eagle',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              Text(
                'T-shirt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              Text(
                'EGP 150',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '300',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '35% OFF',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2AC627)),
                  )
                ],
              ),
              Text(
                'Free delivery by ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Fri, Nov 11.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2AC627)),
              ),
              Text(
                'Order in 9h 31m',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Sold by ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                  Text(
                    'American Eagle',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
