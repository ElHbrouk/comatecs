import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/cubits/signup_cubit/signup_cubit.dart';
import 'package:comatecs/features/auth/presentaion/cubits/signup_cubit/signup_states.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/sign_up/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignupStates>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          context.go(AppRoutes.signUpSuccess);
        }
        if (state is SignupFailure) {
          buildErrorSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}
