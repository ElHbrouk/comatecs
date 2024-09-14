import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/favourite/data/data_sources/remote_favourite_data_source.dart';
import 'package:comatecs/features/favourite/domain/repositories/favourite_repository.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class FavouriteRepositoryImplementation extends FavouriteRepository {
  final RemoteFavouriteDataSource remoteFavouriteDataSource;

  FavouriteRepositoryImplementation({required this.remoteFavouriteDataSource});

  @override
  void addToFavourite({String id = '1'}) {
    remoteFavouriteDataSource.addToFavourite(id: id);
  }

  @override
  Future<Either<Failure, List<ItemEntity>>> fetchFavouriteItems() async {
    try {
      var result = await remoteFavouriteDataSource.fetchFavouriteItems();
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
  void removeFromFavourite({String id = '1'}) {
    remoteFavouriteDataSource.removeFromFavourite(id: id);
  }
}
