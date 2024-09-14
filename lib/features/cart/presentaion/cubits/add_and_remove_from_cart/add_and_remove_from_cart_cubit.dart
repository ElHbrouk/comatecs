import 'package:bloc/bloc.dart';
import 'package:comatecs/features/cart/domain/use_cases/add_to_cart_use_case.dart';
import 'package:comatecs/features/cart/domain/use_cases/remove_from_cart_use_case.dart';
import 'package:meta/meta.dart';

part 'add_and_remove_from_cart_state.dart';

class AddAndRemoveFromCartCubit extends Cubit<AddAndRemoveFromCartState> {
  AddAndRemoveFromCartCubit(
      {required this.addToCartUseCase, required this.removeFromCartUseCase})
      : super(AddAndRemoveFromCartInitial());
  final AddToCartUseCase addToCartUseCase;
  final RemoveFromCartUseCase removeFromCartUseCase;
  void addToCart({required String productId, required int quantity}) async {
    emit(AddToCartLoading());
    var result =
        await addToCartUseCase.call(param: productId, quantity: quantity);
    result.fold((failure) {
      emit(
        AddToCartFailure(
          errorMessage: failure.message,
        ),
      );
    }, (isAdded) {
      emit(
        AddToCartSuccess(),
      );
    });
  }

  void removeFromCart({required String productId}) async {
    emit(RemoveFromCartLoading());
    var result = await removeFromCartUseCase.call(param: productId);
    result.fold((failure) {
      emit(
        RemoveFromCartFailure(
          errorMessage: failure.message,
        ),
      );
    }, (isRemoved) {
      emit(
        RemoveFromCartSuccess(),
      );
    });
  }
}
