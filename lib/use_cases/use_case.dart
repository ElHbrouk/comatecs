import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseWithoutParam<Type> {
  Future<Either<Failure, Type>> call();
}

abstract class UseCaseWithParam<Type,Param> {
  Future<Either<Failure, Type>> call(Param param);
}
