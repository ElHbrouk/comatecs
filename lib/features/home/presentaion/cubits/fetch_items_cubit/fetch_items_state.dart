part of 'fetch_items_cubit.dart';

@immutable
sealed class FetchItemsState {}

final class FetchItemsInitial extends FetchItemsState {}

final class FetchItemsLoading extends FetchItemsState {}

final class FetchItemsPaginationLoading extends FetchItemsState {}

final class FetchItemsSuccess extends FetchItemsState {
  final List<ItemEntity> items;

  FetchItemsSuccess({
    required this.items,
  });
}

final class FetchItemsFailure extends FetchItemsState {
  final String errorMessage;

  FetchItemsFailure({
    required this.errorMessage,
  });
}

final class FetchItemsPaginationFailure extends FetchItemsState {
  final String errorMessage;

  FetchItemsPaginationFailure({
    required this.errorMessage,
  });
}
