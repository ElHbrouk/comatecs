import 'package:bloc/bloc.dart';
import 'package:comatecs/features/cart/domain/use_cases/cart_checkout_use_case.dart';
import 'package:meta/meta.dart';

part 'cart_checkout_state.dart';

class CartCheckoutCubit extends Cubit<CartCheckoutState> {
  CartCheckoutCubit(this.cartCheckoutUseCase) : super(CartCheckoutInitial());
  final CartCheckoutUseCase cartCheckoutUseCase;
  Future<void> cartCheckout() async {
    emit(CartCheckoutLoading());
    var result = await cartCheckoutUseCase.call();
    result.fold(
      (failure) {
        emit(
          CartCheckoutFailure(
            failure.message,
          ),
        );
      },
      (isUpdated) {
        emit(
          CartCheckoutSuccess(),
        );
      },
    );
  }
}
