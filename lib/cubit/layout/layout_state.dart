part of 'layout_cubit.dart';

@immutable
sealed class LayoutState {}

final class LayoutInitial extends LayoutState {}

final class GetMyDataSuccessState extends LayoutState {}

final class GetMyDataFailedState extends LayoutState {}
