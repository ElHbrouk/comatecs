import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/home/domain/entites/category_entity.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchSpecificCategoryUseCase
    extends UseCaseWithParam<CategoryEntity, int> {
  final HomeRepository homeRepository;

  FetchSpecificCategoryUseCase(this.homeRepository);
  @override
  Future<Either<Failure, CategoryEntity>> call({required int param}) async {
    return await homeRepository.fetchSpecificCategory(id: param);
  }
}
