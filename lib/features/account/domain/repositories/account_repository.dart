import 'package:comatecs/core/error/failure.dart';
import 'package:comatecs/features/account/domain/entites/user_profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AccountRepository {
  Future<Either<Failure, UserProfileEntity>> fetchUserProfile();
}
