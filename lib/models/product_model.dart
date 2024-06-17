class ProductModel {
  final String photo;
  final String companyName;
  final String productType;
  final String price;
  final String discount;
  final String date;
  final String time;

  ProductModel(
      {required this.photo,
      required this.companyName,
      required this.productType,
      required this.price,
      required this.discount,
      required this.date,
      required this.time});
  factory ProductModel.fromjson(json) {
    return ProductModel(
        photo: json['photo'],
        companyName: json['companyName'],
        productType: json['productType'],
        price: json['price'],
        discount: json['discount'],
        date: json['data'],
        time: json['time']);
  }
}
