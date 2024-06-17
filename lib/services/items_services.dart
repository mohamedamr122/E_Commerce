import 'dart:convert';

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/items_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ItemsServices {
  Future<ItemsModel> getItemsList() async {
    Response response = await http.get(Uri.parse('$baseUrl/items/'));
    ItemsModel itemsModel = jsonDecode(response.body);
    return itemsModel;
  }
}
