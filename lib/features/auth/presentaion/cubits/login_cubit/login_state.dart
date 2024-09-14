part of 'login_cubit.dart';

@immutable
sealed class LoginCubitState {}

final class LoginCubitInitial extends LoginCubitState {}

final class LoginCubitLoading extends LoginCubitState {}

final class LoginCubitSuccess extends LoginCubitState {
  final UserEntity userEntity;

  LoginCubitSuccess(this.userEntity);
}

final class LoginCubitFailure extends LoginCubitState {
  final String message;

  LoginCubitFailure(this.message);
}
