import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/account/domain/entites/user_profile_entity.dart';
import 'package:comatecs/features/account/domain/repositories/account_repository.dart';
import 'package:dartz/dartz.dart';

class FetchUserProfileUseCase extends UseCaseWithoutParam<UserProfileEntity> {
  final AccountRepository accountRepository;

  FetchUserProfileUseCase({required this.accountRepository});

  @override
  Future<Either<Failure, UserProfileEntity>> call() {
    return accountRepository.fetchUserProfile();
  }
}
