part of 'fetch_specific_item_cubit.dart';

@immutable
sealed class FetchSpecificItemState {}

final class FetchSpecificItemInitial extends FetchSpecificItemState {}

final class FetchSpecificItemLoading extends FetchSpecificItemState {}

final class FetchSpecificItemSuccess extends FetchSpecificItemState {
  final ItemEntity itemEntity;
  FetchSpecificItemSuccess({required this.itemEntity});
}

final class FetchSpecificItemFailure extends FetchSpecificItemState {
  final String errorMessage;
  FetchSpecificItemFailure({required this.errorMessage});
}
