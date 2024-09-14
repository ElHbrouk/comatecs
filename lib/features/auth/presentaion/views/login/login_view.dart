import 'package:comatecs/core/services/getit_service.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/auth/data/data_sources/remote_auth_data_source.dart';
import 'package:comatecs/features/auth/data/repositories/auth_repository_implementaion.dart';
import 'package:comatecs/features/auth/domain/use_cases/login_use_case.dart';
import 'package:comatecs/features/auth/presentaion/cubits/login_cubit/login_cubit.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/login_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        LoginUseCase(
          authRepository: AuthRepositoryImplementaion(
            remoteAuthDataSourceImplementaion:
                RemoteAuthDataSourceImplementaion(
              apiService: getIt.get<ApiService>(),
            ),
          ),
        ),
      ),
      child: Scaffold(
        body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (didPop) {}
            // alertExitApp();
          },
          child: const LoginViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
