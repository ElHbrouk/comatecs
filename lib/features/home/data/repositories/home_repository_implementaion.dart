import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementaion extends HomeRepository 
{
  @override
  Future<Either<Failure, List<ItemEntity>>> getItems() {
    // TODO: implement getItems
    throw UnimplementedError();
  }

}
