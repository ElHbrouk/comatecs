import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/account/data/data_sources/remote_fetch_user_profile.dart';
import 'package:comatecs/features/account/domain/entites/user_profile_entity.dart';
import 'package:comatecs/features/account/domain/repositories/account_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AccountRepositoryImplementation extends AccountRepository {
  final RemoteAccountDataSourceImplementaion
      remoteFetchUserProfileImplementaion;
  AccountRepositoryImplementation(this.remoteFetchUserProfileImplementaion);
  @override
  Future<Either<Failure, UserProfileEntity>> fetchUserProfile() async {
    try {
      UserProfileEntity userProfile =
          await remoteFetchUserProfileImplementaion.fetchUserProfile();
      return right(userProfile);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExeption(dioException: e),
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
}
