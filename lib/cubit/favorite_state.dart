part of 'favorite_cubit.dart';

sealed class FavoriteState extends Equatable {
  const FavoriteState(this.favorite);
  final List<ProductModel> favorite;
  @override
  List<Object> get props => [favorite];
}

final class FavoriteInitial extends FavoriteState {
  const FavoriteInitial(super.favorite);
}
