import 'package:bloc/bloc.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/domain/use_cases/fetch_orders_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_orders_state.dart';

class FetchOrdersCubit extends Cubit<FetchOrdersState> {
  FetchOrdersCubit(this.fetchOrdersUseCase) : super(FetchOrdersInitial());
  final FetchOrdersUseCase fetchOrdersUseCase;

  Future<void> fetchOrders() async {
    emit(FetchOrdersLoading());
    var result = await fetchOrdersUseCase.call();
    result.fold((failure) {
      emit(
        FetchOrdersFailure(failure.message),
      );
    }, (orders) {
      emit(
        FetchOrdersSuccess(orders),
      );
    });
  }
}
