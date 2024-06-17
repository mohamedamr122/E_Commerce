part of 'items_cubit.dart';

sealed class ItemsState extends Equatable {
  const ItemsState();

  @override
  List<Object> get props => [];
}

final class ItemsInitial extends ItemsState {}

final class GetItemsLoadingState extends ItemsState {}

final class GetItemsLoadedState extends ItemsState {}

final class GetItemsFailedState extends ItemsState {
  final String message;

  const GetItemsFailedState({required this.message});
}
final class AddItemsLoadingState extends ItemsState {}

final class AddItemsLoadedState extends ItemsState {}

final class AddItemsFailedState extends ItemsState {
  final String message;

  const AddItemsFailedState({required this.message});
}
