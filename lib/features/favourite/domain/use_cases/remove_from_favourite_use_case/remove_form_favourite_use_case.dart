import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/favourite/domain/repositories/favourite_repository.dart';
import 'package:dartz/dartz.dart';

class RemoveFromFavouriteUseCase extends UseCaseWithParam<void, String> {
  final FavouriteRepository favouriteRepository;

  RemoveFromFavouriteUseCase({required this.favouriteRepository});
  @override
  Future<Either<Failure, void>> call({String param = '1'}) {
    favouriteRepository.removeFromFavourite(
      id: param,
    );
    return Future.value(right(null));
  }
}
