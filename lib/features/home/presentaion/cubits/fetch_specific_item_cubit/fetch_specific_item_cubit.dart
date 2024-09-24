import 'package:bloc/bloc.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_specific_item_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_specific_item_state.dart';

class FetchSpecificItemCubit extends Cubit<FetchSpecificItemState> {
  FetchSpecificItemCubit(this.fetchSpecificItemUseCase)
      : super(FetchSpecificItemInitial());
  final FetchSpecificItemUseCase fetchSpecificItemUseCase;

  fetchSpecificItem({required int id}) async {
    emit(FetchSpecificItemLoading());
    var result = await fetchSpecificItemUseCase.call(param: id);

    result.fold(
      (failure) {
        emit(FetchSpecificItemFailure(errorMessage: failure.message));
      },
      (item) {
        emit(FetchSpecificItemSuccess(itemEntity: item));
      },
    );
  }
}
