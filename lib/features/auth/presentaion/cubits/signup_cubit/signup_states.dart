import 'package:comatecs/features/auth/domain/entities/user_entity.dart';

abstract class SignupStates {}

class SignupInitial extends SignupStates {}

class SignupLoading extends SignupStates {}

class SignupSuccess extends SignupStates {
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}

class SignupFailure extends SignupStates {
  final String message;
  SignupFailure({required this.message});
}
