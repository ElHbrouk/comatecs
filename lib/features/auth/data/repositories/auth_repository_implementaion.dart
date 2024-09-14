import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/auth/data/data_sources/remote_auth_data_source.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:comatecs/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImplementaion extends AuthRepository {
  final RemoteAuthDataSourceImplementaion remoteAuthDataSourceImplementaion;

  AuthRepositoryImplementaion(
      {required this.remoteAuthDataSourceImplementaion});
  @override
  Future<Either<Failure, UserEntity>> createAccountWithEmailAndPassword({
    required UserEntity userEntity,
  }) async {
    try {
      remoteAuthDataSourceImplementaion.createAccountWithEmailAndPassword(
        userEntity: userEntity,
      );

      return right(userEntity);
    } catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioExeption(
            dioException: e,
          ),
        );
      } else {
        return left(
          ServerFailure(
            message: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, UserEntity>> forgetPassword(
      {required UserEntity userEntity}) async {
    try {
      await remoteAuthDataSourceImplementaion.forgetPassword();
      return right(userEntity);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserEntity>> login(
      {required UserEntity userEntity}) async {
    try {
      await remoteAuthDataSourceImplementaion.login(userEntity: userEntity);
      return right(userEntity);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserEntity>> resetPassword(
      {required UserEntity userEntity}) async {
    try {
      await remoteAuthDataSourceImplementaion.resetPassword(
        userEntity: userEntity,
      );
      return right(userEntity);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeption(dioException: e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
