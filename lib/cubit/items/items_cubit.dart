import 'dart:convert';

import 'package:e_commerce/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit() : super(ItemsInitial());
  Future<dynamic> getItems() async {
    try {
      emit(GetItemsLoadingState());
      Response response = await http.get(Uri.parse('$baseUrl/categories/'));
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(GetItemsLoadedState());
      } else {
        emit(GetItemsFailedState(message: data['message']));
      }
    } catch (e) {
      emit(GetItemsFailedState(message: e.toString()));
    }
  }

  Future<dynamic> addItem(
      {required String name,
      required String description,
      required String price,
      required String image,
      required String isSold,
      required String category,
      required String createdBy}) async {
    try {
      emit(AddItemsLoadingState());
      Response response = await http.post(Uri.parse('$baseUrl/items/'), body: {
        'name': name,
        'description': description,
        'price': price,
        'image': image,
        'is_sold': isSold,
        'category': category,
        'created_by': createdBy,
      });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(AddItemsLoadedState());
      } else {
        emit(AddItemsFailedState(message: data['message']));
      }
    } catch (e) {
      emit(AddItemsFailedState(message: e.toString()));
    }
  }
}
