import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<ItemEntity>>> fetchProducts({int pageNumber = 1});
  Future<Either<Failure, List<ItemEntity>>> searchProducts({String name});
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories();
  Future<Either<Failure, List<ItemEntity>>> fetchFilteredProducts(
      {categoryId = 1, minPrice = 0, maxPrice = 400});
}
