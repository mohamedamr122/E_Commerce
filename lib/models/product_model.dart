import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String imageUrl;
  final String companyName;
  final String productType;
  final String price;
  final String discount;
  final String date;
  final String time;

  ProductModel(
      {required this.imageUrl,
      required this.companyName,
      required this.productType,
      required this.price,
      required this.discount,
      required this.date,
      required this.time});
  factory ProductModel.fromFireStore(DocumentSnapshot snapshot) {
    return ProductModel(
        imageUrl: snapshot.get('imageUrl'),
        companyName: snapshot.get('companyName'),
        date: snapshot.get('date'),
        discount: snapshot.get('discount'),
        price: snapshot.get('price'),
        productType: snapshot.get('productType'),
        time: snapshot.get('time'));
  }
}
