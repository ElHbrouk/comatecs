import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class FavouriteRepository {
  Future<Either<Failure, List<ItemEntity>>> fetchFavouriteItems();
  void addToFavourite({String id = '1'});
  void removeFromFavourite({String id = '1'});
}
