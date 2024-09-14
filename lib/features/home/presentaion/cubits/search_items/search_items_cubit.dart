import 'package:bloc/bloc.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:meta/meta.dart';

part 'search_items_state.dart';

class SearchItemsCubit extends Cubit<SearchItemsState> {
  SearchItemsCubit(this.useCaseWithParam) : super(SearchItemsInitial());
  final UseCaseWithParam useCaseWithParam;
  Future<void> searchItems({String name = ''}) async {
    emit(SearchItemsLoading());
    var result = await useCaseWithParam.call(param: name);
    result.fold(
      (failure) {
        emit(
          SearchItemsFailure(errorMessage: failure.message),
        );
      },
      (items) {
        emit(
          SearchItemsSuccess(items: items),
        );
      },
    );
  }
}
