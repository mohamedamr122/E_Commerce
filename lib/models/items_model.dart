class ItemsModel {
  final String name;
  final String description;
  final String price;
  final String image;
  final String isSold;
  final String category;
  final String createdBy;

  ItemsModel({
    required this.isSold,
    required this.category,
    required this.createdBy,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
  factory ItemsModel.fromJson(json) {
    return ItemsModel(
      isSold: json['is_sold'],
      category: json['category'],
      createdBy: json['created_by'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
    );
  }
}
