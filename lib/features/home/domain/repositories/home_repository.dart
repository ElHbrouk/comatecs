import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure,List<ItemEntity>>> getItems();
}