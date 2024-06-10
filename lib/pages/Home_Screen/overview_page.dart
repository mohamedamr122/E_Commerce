import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/product_list_view.dart';
import 'package:e_commerce/Components/overview_product_photo.dart';
import 'package:e_commerce/Components/search_bar.dart';
import 'package:e_commerce/Components/size_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});
  static const String routeName = 'OverviewPage';

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 66,
        title: const AppBarText(
          text: 'B&S',
        ),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const RangeMaintainingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const MySearchBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'T-shirt',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const OverviewProductPhoto(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        'EGP',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff707070)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('150',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w700)),
                    ],
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
                  const Text(
                    'Low stock: only 4 left',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizeContainer(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Highlights',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '• The go-to graphics you want in a super soft jersey you gotta feel to believe.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff787878)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '016-MENS GRAPHICS',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff787878)),
                  ),
                  const Divider(
                    thickness: 10,
                  ),
                  const Text(
                    'User Reviews',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      const Text(
                        '4.4',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          RatingBar.builder(
                            itemSize: 30,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, index) => const Icon(
                              Icons.star_purple500_sharp,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (value) {
                              return;
                            },
                          ),
                          const Text(
                            'Based on 49 ratings',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Center(
                    child: Text(
                      'There are 49 customer ratings and 1 customer review',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Divider(
                    thickness: 10,
                  ),
                  const Text(
                    'CUSTOMERS ALSO VIEWED',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const ProductListView()
          ],
        ),
      ),
    );
  }
}
