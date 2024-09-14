part of 'add_and_remove_from_cart_cubit.dart';

@immutable
sealed class AddAndRemoveFromCartState {}

final class AddAndRemoveFromCartInitial extends AddAndRemoveFromCartState {}

final class AddToCartLoading extends AddAndRemoveFromCartState {}

final class AddToCartSuccess extends AddAndRemoveFromCartState {}

final class AddToCartFailure extends AddAndRemoveFromCartState {
  final String errorMessage;
  AddToCartFailure({required this.errorMessage});
}

final class RemoveFromCartLoading extends AddAndRemoveFromCartState {}

final class RemoveFromCartSuccess extends AddAndRemoveFromCartState {}

final class RemoveFromCartFailure extends AddAndRemoveFromCartState {
  final String errorMessage;

  RemoveFromCartFailure({required this.errorMessage});
}
