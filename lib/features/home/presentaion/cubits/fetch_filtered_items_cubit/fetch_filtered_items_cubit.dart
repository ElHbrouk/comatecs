import 'package:bloc/bloc.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_filtered_items_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_filtered_items_state.dart';

class FetchFilteredItemsCubit extends Cubit<FetchFilteredItemsState> {
  FetchFilteredItemsCubit(this.fetchFilteredDataUseCase)
      : super(FetchFilteredItemsInitial());
  final FetchFilteredItemsUseCase fetchFilteredDataUseCase;
  fetchFilteredItems({
    categoryId = 1,
    minPrice = 0,
    maxPrice = 400,
  }) async {
    emit(FetchFilteredItemsLoading());
    var result = await fetchFilteredDataUseCase.call(
      param: categoryId,
      maxPrice: maxPrice,
      minPrice: minPrice,
    );
    result.fold(
      (failure) {
        emit(
          FetchFilteredItemsFailure(message: failure.message),
        );
      },
      (items) {
        emit(
          FetchFilteredItemsSuccess(items: items),
        );
      },
    );
  }
}
