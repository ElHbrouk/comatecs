import 'package:bloc/bloc.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/account/domain/entites/user_profile_entity.dart';
import 'package:meta/meta.dart';

part 'fetch_user_profile_state.dart';

class FetchUserProfileCubit extends Cubit<FetchUserProfileState> {
  FetchUserProfileCubit(this.useCaseWithoutParam)
      : super(FetchUserProfileInitial());
  final UseCaseWithoutParam useCaseWithoutParam;
  fetchUserProfile() async {
    emit(FetchUserProfileLoading());
    var result = await useCaseWithoutParam.call();

    result.fold(
      (failure) {
        emit(
          FetchUserProfileFailure(
            message: failure.message,
          ),
        );
      },
      (userProfile) {
        emit(
          FetchUserProfileSuccess(
            userProfileEntity: userProfile,
          ),
        );
      },
    );
  }
}
