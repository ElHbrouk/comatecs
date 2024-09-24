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
        if (state is SignupFailure) {
          if (state.message == 'Error, Internal Server Error') {
            buildErrorSnackBar(context, 'البريد الالكتروني  مستخدم بالفعل');
          } else if (state.message ==
              'Connection error with ApiServer DioException [connection error]: The connection errored: The XMLHttpRequest onError callback was called. This typically indicates an error on the network layer. This indicates an error which most likely cannot be solved by the library.') {
            buildErrorSnackBar(context, 'يرجى مراجعة اتصالك بالانترنت');
          } else {
            buildErrorSnackBar(context, state.message);
          }
        } else if (state is SignupSuccess) {
          buildSuccessSnackBar(context, 'تم التسجيل بنجاح');
          context.go(AppRoutes.signUpSuccess);
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
