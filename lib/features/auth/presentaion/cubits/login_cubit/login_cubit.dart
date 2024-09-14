import 'package:bloc/bloc.dart';
import 'package:comatecs/core/use_cases/use_case.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit(this.useCaseWithParam) : super(LoginCubitInitial());
  final UseCaseWithParam useCaseWithParam;
  Future<void> login({required UserEntity userEntity}) async {
    emit(LoginCubitLoading());

    final result = await useCaseWithParam.call(param: userEntity);
    result.fold((failure) {
      emit(
        LoginCubitFailure(failure.message),
      );
    }, (userEntity) {
      emit(
        LoginCubitSuccess(userEntity),
      );
    });
  }
}
