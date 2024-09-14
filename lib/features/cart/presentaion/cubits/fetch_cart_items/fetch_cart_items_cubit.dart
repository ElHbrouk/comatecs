import 'package:bloc/bloc.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/cart/domain/use_cases/fetch_cart_items_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_cart_items_state.dart';

class FetchCartItemsCubit extends Cubit<FetchCartItemsState> {
  FetchCartItemsCubit(this.fetchCartItemsUseCase)
      : super(FetchCartItemsInitial());
  final FetchCartItemsUseCase fetchCartItemsUseCase;
  fetchCartItems() async {
    emit(FetchCartItemsLoading());
    var result = await fetchCartItemsUseCase.call();
    result.fold(
      (failure) {
        emit(
          FetchCartItemsFailure(errorMessage: failure.message),
        );
      },
      (items) {
        emit(
          FetchCartItemsSuccess(items: items),
        );
      },
    );
  }
}
