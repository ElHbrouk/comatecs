import 'package:bloc/bloc.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_specific_category_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_specific_category_state.dart';

class FetchSpecificCategoryCubit extends Cubit<FetchSpecificCategoryState> {
  FetchSpecificCategoryCubit(this.fetchSpecificCategoryUseCase)
      : super(FetchSpecificCategoryInitial());
  final FetchSpecificCategoryUseCase fetchSpecificCategoryUseCase;
  fetchSpecificCategory({required int id}) async {
    emit(FetchSpecificCategoryLoading());

    var result = await fetchSpecificCategoryUseCase.call(param: id);
    result.fold(
      (failure) {
        emit(
          FetchSpecificCategoryFailure(errorMessage: failure.message),
        );
      },
      (category) {
        emit(
          FetchSpecificCategorySuccess(categoryEntity: category),
        );
      },
    );
  }
}
