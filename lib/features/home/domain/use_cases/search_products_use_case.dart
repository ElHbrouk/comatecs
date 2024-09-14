import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class SearchProductsUseCase extends UseCaseWithParam<List<ItemEntity>, String> {
  final HomeRepository homeRepository;

  SearchProductsUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<ItemEntity>>> call({required String param}) {
    return homeRepository.searchProducts(name: param);
  }
}
