import 'package:bloc/bloc.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/use_cases/fetch_items_use_case.dart';
import 'package:flutter/material.dart';

part 'fetch_items_state.dart';

class FetchItemsCubit extends Cubit<FetchItemsState> {
  FetchItemsCubit(this.fetchItemsUseCase) : super(FetchItemsInitial());
  final FetchItemsUseCase fetchItemsUseCase;
  Future<void> fechItems({int pageNumber = 1}) async {
    if (pageNumber == 1) {
      emit(FetchItemsLoading());
    } else {
      emit(FetchItemsPaginationLoading());
    }

    var result = await fetchItemsUseCase.call(
      param: pageNumber,
    );
    result.fold(
      (failure) {
        if (pageNumber == 1) {
          emit(
            FetchItemsFailure(errorMessage: failure.message),
          );
        } else {
          emit(
            FetchItemsPaginationFailure(errorMessage: failure.message),
          );
        }
      },
      (items) {
        emit(
          FetchItemsSuccess(
            items: items,
          ),
        );
      },
    );
  }
}
