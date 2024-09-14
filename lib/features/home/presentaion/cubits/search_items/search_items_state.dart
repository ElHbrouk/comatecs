part of 'search_items_cubit.dart';

@immutable
sealed class SearchItemsState {}

final class SearchItemsInitial extends SearchItemsState {}

final class SearchItemsLoading extends SearchItemsState {}

final class SearchItemsSuccess extends SearchItemsState {
  final List<ItemEntity> items;

  SearchItemsSuccess({required this.items});
}

final class SearchItemsFailure extends SearchItemsState {
  final String errorMessage;

  SearchItemsFailure({required this.errorMessage});
}
