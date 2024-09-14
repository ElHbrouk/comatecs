part of 'fetch_favourite_items_cubit.dart';

@immutable
sealed class FetchFavouriteItemsState {}

final class FetchFavouriteItemsInitial extends FetchFavouriteItemsState {}

final class FetchFavouriteItemsLoading extends FetchFavouriteItemsState {}

final class FetchFavouriteItemsSuccess extends FetchFavouriteItemsState {
  final List<ItemEntity> items;

  FetchFavouriteItemsSuccess({required this.items});
}

final class FetchFavouriteItemsFauiler extends FetchFavouriteItemsState {
  final String errorMessage;

  FetchFavouriteItemsFauiler({required this.errorMessage});
}
