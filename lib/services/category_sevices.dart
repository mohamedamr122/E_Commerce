import 'dart:convert';

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/category_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CategorySevices {
  Future<CategoryModel> getCategory() async {
    Response response = await http.get(Uri.parse('$baseUrl/categories/'));
    CategoryModel categoryModel = jsonDecode(response.body);
    return categoryModel;
  }
}
