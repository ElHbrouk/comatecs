import 'dart:developer';

import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/auth/presentaion/cubits/login_cubit/login_cubit.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginCubitState>(
      listener: (context, state) {
        if (state is LoginCubitFailure) {
          if (state.message == 'Error, Unauthorized Access' ||
              state.message == 'Error, Internal Server Error') {
            buildErrorSnackBar(
                context, 'البريد الالكتروني او كلمة المرور غير صحيحة');
          } else if (state.message ==
              'Connection error with ApiServer DioException [connection error]: The connection errored: The XMLHttpRequest onError callback was called. This typically indicates an error on the network layer. This indicates an error which most likely cannot be solved by the library.') {
            buildErrorSnackBar(context, 'يرجى مراجعة اتصالك بالانترنت');
          } else {
            log(state.message);

            buildErrorSnackBar(context, state.message);
          }
        } else if (state is LoginCubitSuccess) {
          context.go(AppRoutes.homeLayout);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginCubitLoading ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
