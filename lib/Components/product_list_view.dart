import 'package:e_commerce/Components/product_box.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  ProductListView({
    super.key,
  });
  final List<ProductModel> products = [
    ProductModel(
        photo: 'photo',
        companyName: 'sanff',
        productType: 'asfwfw',
        price: '36',
        discount: '54',
        date: '10',
        time: '20'),
    ProductModel(
        photo: 'photo',
        companyName: 'sanff',
        productType: 'asfwfw',
        price: '36',
        discount: '54',
        date: '10',
        time: '20'),
    ProductModel(
        photo: 'photo',
        companyName: 'sanff',
        productType: 'asfwfw',
        price: '36',
        discount: '54',
        date: '10',
        time: '20'),
    ProductModel(
        photo: 'photo',
        companyName: 'sanff',
        productType: 'asfwfw',
        price: '36',
        discount: '54',
        date: '10',
        time: '20'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: products.length,
      itemBuilder: (context, index) => ProductBox(
        product: products[index],
      ),
    );
  }
}
