import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:comatecs/features/auth/domain/use_cases/create_account_with_email_and_password_use_case.dart';
import 'package:comatecs/features/auth/presentaion/cubits/signup_cubit/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignupStates> {
  SignUpCubit(this.createAccountWithEmailAndPasswordUseCase) : super(SignupInitial());
  final CreateAccountWithEmailAndPasswordUseCase createAccountWithEmailAndPasswordUseCase;

  Future<void> createAccountWithEmailAndPassword({
    required UserEntity userEntity,
  }) async {
    emit(SignupLoading());
    final result = await createAccountWithEmailAndPasswordUseCase.call(param: userEntity);
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
