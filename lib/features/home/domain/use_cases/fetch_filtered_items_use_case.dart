import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchFilteredItemsUseCase
    extends UseCaseWithParam<List<ItemEntity>, int> {
  final HomeRepository homeRepository;

  FetchFilteredItemsUseCase(this.homeRepository);
  @override
  Future<Either<Failure, List<ItemEntity>>> call({
    int param = 1,
    int minPrice = 0,
    int maxPrice = 400,
  }) async {
    return homeRepository.fetchFilteredProducts(
      categoryId: param,
      minPrice: minPrice,
      maxPrice: maxPrice,
    );
  }
}
