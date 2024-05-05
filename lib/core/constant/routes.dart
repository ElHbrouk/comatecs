import 'package:comatecs/features/auth/presentaion/views/forget_password/check_email_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/verify_code_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/login_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/check_email_sign_up_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/verify_code_sign_up_view.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
import 'package:comatecs/features/language/presentation/views/language_view.dart';
import 'package:comatecs/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static const mainView = "/";
  static const homeView = "/homeView";
  static const languageView = "/languageView";
  // onBoarding
  static const onBoardingView = "/onBoardingView";
  // Auth
  static const loginView = "/loginView";
  static const signUpView = "/signUpView";
  static const forgetPasswordView = "/forgetPasswordView";
  static const resetPasswordView = "/resetPasswordView";
  static const resetPasswordSuccessView = "/resetPasswordSuccessView";
  static const verifyCodePasswordView = "/verifyCodeViewPassword";
  static const signUpSuccess = "/signUpSuccess";
  static const checkEmailSignUpView = "/checkEmailView";
  static const verifyCodeSignUpView = "/verifyCodeSignUpView";
  static Map<String, Widget Function(BuildContext)> routes = {
    loginView: (context) => const LoginView(),
    languageView: (context) => const Language(),
    onBoardingView: (context) => const OnBoardingView(),
    signUpView: (context) => const SignUpView(),
    forgetPasswordView: (context) => const ForgetPasswordView(),
    resetPasswordView: (context) => const ResetPasswordView(),
    resetPasswordSuccessView: (context) => const ResetPasswordSuccess(),
    homeView: (context) => const HomeView(),
    verifyCodePasswordView: (context) => const VerifyCodePasswordView(),
    signUpSuccess: (context) => const SignUpSuccess(),
    checkEmailSignUpView: (context) => const CheckEmailSignUpView(),
    verifyCodeSignUpView: (context) => const VerifyCodeSignUpView(),
  };
}
