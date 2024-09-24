import 'package:comatecs/core/services/getit_service.dart';
import 'package:comatecs/features/auth/domain/use_cases/create_account_with_email_and_password_use_case.dart';
import 'package:comatecs/features/auth/presentaion/cubits/signup_cubit/signup_cubit.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/sign_up/sign_up_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt.get<CreateAccountWithEmailAndPasswordUseCase>(),
      ),
      child: const Scaffold(
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
