import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchItemsUseCase extends UseCaseWithParam<List<ItemEntity>, int> {
  final HomeRepository homeRepository;

  FetchItemsUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<ItemEntity>>> call({int param = 1}) async {
    return await homeRepository.fetchProducts(
      pageNumber: param,
    );
  }
}
