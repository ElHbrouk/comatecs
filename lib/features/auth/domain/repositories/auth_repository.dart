import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required UserEntity userEntity,
  });
  Future<Either<Failure, UserEntity>> createAccountWithEmailAndPassword({
    required UserEntity userEntity,
  });
  Future<Either<Failure, UserEntity>> forgetPassword({
    required UserEntity userEntity,
  });
  Future<Either<Failure, UserEntity>> resetPassword({
    required UserEntity userEntity,
  });
}
