import 'package:bloc/bloc.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_categories_state.dart';

class FetchCategoriesCubit extends Cubit<FetchCategoriesState> {
  FetchCategoriesCubit(this.fetchCategoriesUseCase)
      : super(FetchCategoriesInitial());
  final FetchCategoriesUseCase fetchCategoriesUseCase;
  fetchCategories() async {
    emit(FetchCategoriesLoading());

    var result = await fetchCategoriesUseCase.call();
    result.fold(
      (failure) {
        emit(
          FetchCategoriesFailure(errorMessage: failure.message),
        );
      },
      (categories) {
        emit(
          FetchCategoriesSuccess(categories: categories),
        );
      },
    );
  }
}
