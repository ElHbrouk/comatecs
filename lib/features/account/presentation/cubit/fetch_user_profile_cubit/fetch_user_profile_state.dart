part of 'fetch_user_profile_cubit.dart';

@immutable
sealed class FetchUserProfileState {}

final class FetchUserProfileInitial extends FetchUserProfileState {}

final class FetchUserProfileLoading extends FetchUserProfileState {}

final class FetchUserProfileSuccess extends FetchUserProfileState {
  final UserProfileEntity userProfileEntity;

  FetchUserProfileSuccess({required this.userProfileEntity});
}

final class FetchUserProfileFailure extends FetchUserProfileState {
  final String message;

  FetchUserProfileFailure({required this.message});
}
