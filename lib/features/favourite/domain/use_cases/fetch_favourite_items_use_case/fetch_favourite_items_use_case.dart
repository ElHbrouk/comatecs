import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/favourite/domain/repositories/favourite_repository.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:dartz/dartz.dart';

class FetchFavouriteItemsUseCase extends UseCaseWithoutParam<List<ItemEntity>> {
  final FavouriteRepository favouriteRepository;

  FetchFavouriteItemsUseCase({required this.favouriteRepository});
  @override
  Future<Either<Failure, List<ItemEntity>>> call() {
    return favouriteRepository.fetchFavouriteItems();
  }
}
