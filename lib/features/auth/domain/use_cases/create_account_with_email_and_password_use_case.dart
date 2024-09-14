import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:comatecs/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class CreateAccountWithEmailAndPasswordUseCase
    extends UseCaseWithParam<UserEntity, UserEntity> {
  final AuthRepository authRepository;

  CreateAccountWithEmailAndPasswordUseCase({required this.authRepository});

  @override
  Future<Either<Failure, UserEntity>> call({required UserEntity param}) {
    return authRepository.createAccountWithEmailAndPassword(
      userEntity: param,
    );
  }
}
