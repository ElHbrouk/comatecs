import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:comatecs/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchItemsUseCase extends UseCaseWithoutParam<List<ItemEntity>> {
  final HomeRepository homeRepository;

  FetchItemsUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<ItemEntity>>> call() async {
    return await homeRepository.fetchItems();
  }
}
