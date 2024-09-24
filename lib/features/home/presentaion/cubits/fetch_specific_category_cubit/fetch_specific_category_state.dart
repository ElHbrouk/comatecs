part of 'fetch_specific_category_cubit.dart';

@immutable
sealed class FetchSpecificCategoryState {}

final class FetchSpecificCategoryInitial extends FetchSpecificCategoryState {}

final class FetchSpecificCategoryLoading extends FetchSpecificCategoryState {}

final class FetchSpecificCategorySuccess extends FetchSpecificCategoryState {
  final CategoryEntity categoryEntity;

  FetchSpecificCategorySuccess({required this.categoryEntity});
}

final class FetchSpecificCategoryFailure extends FetchSpecificCategoryState {
  final String errorMessage;

  FetchSpecificCategoryFailure({required this.errorMessage});
}
