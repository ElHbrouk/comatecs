import 'package:bloc/bloc.dart';
import 'package:comatecs/features/favourite/domain/use_cases/add_to_favourite_use_case/add_to_favourite_use_case.dart';
import 'package:comatecs/features/favourite/domain/use_cases/remove_from_favourite_use_case/remove_form_favourite_use_case.dart';
import 'package:meta/meta.dart';

part 'add_and_remove_favourite_state.dart';

class AddAndRemoveFavouriteCubit extends Cubit<AddAndRemoveFavouriteState> {
  AddAndRemoveFavouriteCubit(
      {required this.addToFavouriteUseCase,
      required this.removeFormFavouriteUseCase})
      : super(AddToFavouriteInitial());
  final AddToFavouriteUseCase addToFavouriteUseCase;
  final RemoveFromFavouriteUseCase removeFormFavouriteUseCase;
  void addToFavourite({String id = '1'}) async {
    emit(AddToFavouriteLoading());
    var result = await addToFavouriteUseCase.call(
      param: id,
    );
    result.fold(
      (failure) {
        emit(
          AddToFavouriteFailure(errorMessage: failure.message),
        );
      },
      (isAdded) {
        emit(
          AddToFavouriteSuccess(),
        );
      },
    );
  }

  void removeFromFavourite({String id = '1'}) async {
    emit(RemoveFromFavouriteLoading());
    var result = await removeFormFavouriteUseCase.call(
      param: id,
    );
    result.fold(
      (failure) {
        emit(
          RemoveFromFavouriteFailure(errorMessage: failure.message),
        );
      },
      (isRemoved) {
        emit(
          RemoveFromFavouriteSuccess(),
        );
      },
    );
  }
}
