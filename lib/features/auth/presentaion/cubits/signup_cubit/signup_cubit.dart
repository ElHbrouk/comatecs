import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:comatecs/features/auth/presentaion/cubits/signup_cubit/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignupStates> {
  SignUpCubit(this.useCaseWithParam) : super(SignupInitial());
  final UseCaseWithParam useCaseWithParam;

  Future<void> createAccountWithEmailAndPassword({
    required UserEntity userEntity,
  }) async {
    emit(SignupLoading());
    final result = await useCaseWithParam.call(param: userEntity);
    result.fold(
      (failure) => emit(
        SignupFailure(message: failure.message),
      ),
      (userEntity) => emit(
        SignupSuccess(
          userEntity: userEntity,
        ),
      ),
    );
  }
}
