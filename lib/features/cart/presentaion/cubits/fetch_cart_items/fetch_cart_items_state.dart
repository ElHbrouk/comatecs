part of 'fetch_cart_items_cubit.dart';

@immutable
sealed class FetchCartItemsState {}

final class FetchCartItemsInitial extends FetchCartItemsState {}

final class FetchCartItemsLoading extends FetchCartItemsState {}

final class FetchCartItemsSuccess extends FetchCartItemsState {
  final List<CartEntity> items;

  FetchCartItemsSuccess({required this.items});
}

final class FetchCartItemsFailure extends FetchCartItemsState {
  final String errorMessage;

  FetchCartItemsFailure({required this.errorMessage});
}
