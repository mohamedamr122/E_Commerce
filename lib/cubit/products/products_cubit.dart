import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/product_model.dart';

part 'products_state.dart';

class UploadProductsCubit extends Cubit<ProductsState> {
  UploadProductsCubit() : super(UploadProductsInitial());
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> uploadProduct(ProductModel product) async {
    emit(UploadProductsLoading());
    try {
      await _firestore.collection("products").add(product as Map<String, dynamic>);
      emit(UploadProductsSuccess( product));
    } on FirebaseException catch (e) {
      emit(UploadProductsFailed(e.message ?? 'An error occurred'));
    } catch (e) {
      emit(UploadProductsFailed(e.toString()));
    }
  }
}
