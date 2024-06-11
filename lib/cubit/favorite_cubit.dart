import 'package:e_commerce/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(const FavoriteInitial([]));
  void addToFavorites(ProductModel product) {
    emit(FavoriteInitial(List.from(state.favorite)..add(product)));
  }

  void removeFavorite(ProductModel product) {
    emit(FavoriteInitial(List.from(state.favorite)..remove(product)));
  }
}
