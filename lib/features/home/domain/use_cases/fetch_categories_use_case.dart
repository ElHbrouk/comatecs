import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchCategoriesUseCase extends UseCaseWithoutParam {
  final HomeRepository homeRepository;

  FetchCategoriesUseCase(this.homeRepository);
  @override
  Future<Either<Failure, dynamic>> call() {
    return homeRepository.fetchCategories();
  }
}
