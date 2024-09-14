part of 'fetch_filtered_items_cubit.dart';

@immutable
sealed class FetchFilteredItemsState {}

final class FetchFilteredItemsInitial extends FetchFilteredItemsState {}

final class FetchFilteredItemsLoading extends FetchFilteredItemsState {}

final class FetchFilteredItemsSuccess extends FetchFilteredItemsState {
  final List<ItemEntity> items;

  FetchFilteredItemsSuccess({
    required this.items,
  });
}

final class FetchFilteredItemsFailure extends FetchFilteredItemsState {
  final String message;

  FetchFilteredItemsFailure({required this.message});
}
