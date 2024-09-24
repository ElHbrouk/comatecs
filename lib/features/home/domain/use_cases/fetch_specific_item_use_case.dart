import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchSpecificItemUseCase extends UseCaseWithParam<ItemEntity, int> {
  final HomeRepository homeRepository;

  FetchSpecificItemUseCase({required this.homeRepository});
  @override
  Future<Either<Failure, ItemEntity>> call({required int param}) async {
    return await homeRepository.fetchSpecificItem(id: param);
  }
}
