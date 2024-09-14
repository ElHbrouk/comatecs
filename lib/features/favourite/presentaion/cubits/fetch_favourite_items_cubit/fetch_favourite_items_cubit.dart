import 'package:bloc/bloc.dart';
import 'package:comatecs/features/favourite/domain/use_cases/fetch_favourite_items_use_case/fetch_favourite_items_use_case.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_favourite_items_state.dart';

class FetchFavouriteItemsCubit extends Cubit<FetchFavouriteItemsState> {
  FetchFavouriteItemsCubit(this.favouriteItemsUseCase)
      : super(FetchFavouriteItemsInitial());
  final FetchFavouriteItemsUseCase favouriteItemsUseCase;
  void fetchFavouriteItems() async {
    emit(FetchFavouriteItemsLoading());
    var result = await favouriteItemsUseCase.call();
    result.fold(
      (failure) {
        emit(
          FetchFavouriteItemsFauiler(errorMessage: failure.message),
        );
      },
      (items) {
        emit(
          FetchFavouriteItemsSuccess(items: items),
        );
      },
    );
  }
}
