import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/data/data_sources/remote_data_source.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImplementaion extends HomeRepository {
  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  HomeRepositoryImplementaion({required this.homeRemoteDataSourceImpl});
  @override
  Future<Either<Failure, List<ItemEntity>>> fetchProducts({
    int pageNumber = 1,
  }) async {
    try {
      List<ItemEntity> items = await homeRemoteDataSourceImpl.fetchProducts(
        pageNumber: pageNumber,
      );
      return right(items);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExeption(dioException: e),
        );
      } else {
        return left(
          ServerFailure(message: 'حدث خطأ غير متوقع حاول مرة اخرى'),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories() async {
    try {
      List<CategoryEntity> categories =
          await homeRemoteDataSourceImpl.fetchCategories();
      return right(categories);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(
            ServerFailure(message: '$eحدث خطأ غير متوقع حاول مرة اخرى'));
      }
    }
  }

  @override
  Future<Either<Failure, List<ItemEntity>>> fetchFilteredProducts({
    categoryId = 1,
    minPrice = 0,
    maxPrice = 400,
  }) async {
    try {
      var filteredItems = await homeRemoteDataSourceImpl.fetchFilteredProducts(
        categoryId: categoryId,
        minPrice: minPrice,
        maxPrice: maxPrice,
      );

      return right(filteredItems);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExeption(dioException: e),
        );
      } else {
        return left(
          ServerFailure(
            message: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<ItemEntity>>> searchProducts(
      {String name = ''}) async {
    var result = await homeRemoteDataSourceImpl.searchProducts(
      name: name,
    );
    try {
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExeption(dioException: e),
        );
      } else {
        return left(
          ServerFailure(
            message: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, ItemEntity>> fetchSpecificItem({int id = 1}) async {
    try {
  var result= await homeRemoteDataSourceImpl.fetchSpecificItem(id: id);
  return right(result);
} on Exception catch (e) {
  if (e is DioException) {
    return left(
      ServerFailure.fromDioExeption(dioException: e),
    );
  } else {
    return left(
      ServerFailure(
        message: e.toString(),
      ),
    );
  }
}
  }
  
  @override
  Future<Either<Failure, CategoryEntity>> fetchSpecificCategory({int id = 1}) async{
     try {
  var result= await homeRemoteDataSourceImpl.fetchSpecificCategory(id: id);
  return right(result);
} on Exception catch (e) {
  if (e is DioException) {
    return left(
      ServerFailure.fromDioExeption(dioException: e),
    );
  } else {
    return left(
      ServerFailure(
        message: e.toString(),
      ),
    );
  }
}
  }
}
