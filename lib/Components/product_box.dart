import 'package:e_commerce/Components/navigator_button.dart';
import 'package:e_commerce/Home_Screen/overview_page.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    image: AssetImage('assets/main_screen/PRINTED SHIRT.png')),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'PRINTED SHIRT',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'EGP',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey[600]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '300',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    '420',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '40% OFF',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2AC627)),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              MyNavigatorButton(
                  textColor: Colors.black,
                  onTap: () {},
                  height: 53,
                  width: 185,
                  color: const Color(0xffF2F2F2),
                  text: 'Buy now'),
            ],
          ),
        ],
      ),
    );
  }
}
