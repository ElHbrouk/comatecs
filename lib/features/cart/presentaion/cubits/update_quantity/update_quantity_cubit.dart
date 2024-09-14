import 'package:bloc/bloc.dart';
import 'package:comatecs/features/cart/domain/use_cases/update_cart_item_quantity_use_case.dart';
import 'package:meta/meta.dart';

part 'update_quantity_state.dart';

class UpdateQuantityCubit extends Cubit<UpdateQuantityState> {
  UpdateQuantityCubit(this.updateCartQuantityUseCase)
      : super(UpdateQuantityInitial());
  final UpdateCartQuantityUseCase updateCartQuantityUseCase;
  late int newQuantity;
  void incrementQuantity(
      {required String productId, required int quantity}) async {
    emit(UpdateQuantityLoading());
    newQuantity = quantity + 1;
    var result = await updateCartQuantityUseCase.call(
      param: productId,
      quantity: newQuantity.toString(),
    );

    result.fold(
      (failure) {
        emit(
          UpdateQuantityFailure(
            errorMessage: failure.message,
          ),
        );
      },
      (isUpdated) {
        emit(
          UpdateQuantitySuccess(),
        );
      },
    );
  }

  void decrementQuantity(
      {required String productId, required int quantity}) async {
    emit(UpdateQuantityLoading());
    newQuantity = quantity - 1;
    var result = await updateCartQuantityUseCase.call(
      param: productId,
      quantity: newQuantity.toString(),
    );

    result.fold(
      (failure) {
        emit(
          UpdateQuantityFailure(
            errorMessage: failure.message,
          ),
        );
      },
      (isUpdated) {
        emit(
          UpdateQuantitySuccess(),
        );
      },
    );
  }
}
