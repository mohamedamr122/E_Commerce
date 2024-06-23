part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class UploadProductsInitial extends ProductsState {}

final class UploadProductsLoading extends ProductsState {}

final class UploadProductsSuccess extends ProductsState {
  final ProductModel product;

  UploadProductsSuccess(this.product);
}

final class UploadProductsFailed extends ProductsState {
  final String message;

  UploadProductsFailed( this.message);
}
