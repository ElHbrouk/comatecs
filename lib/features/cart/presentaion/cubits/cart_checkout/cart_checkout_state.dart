part of 'cart_checkout_cubit.dart';

@immutable
sealed class CartCheckoutState {}

final class CartCheckoutInitial extends CartCheckoutState {}

final class CartCheckoutLoading extends CartCheckoutState {}

final class CartCheckoutSuccess extends CartCheckoutState {}

final class CartCheckoutFailure extends CartCheckoutState {
  final String errorMessage;

  CartCheckoutFailure(this.errorMessage);
}
