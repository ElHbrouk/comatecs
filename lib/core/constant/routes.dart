import 'package:comatecs/core/middlewares/on_boarding_miiddleware.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/check_email_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/verify_code_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/login/login_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/verify_code_sign_up_view.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
import 'package:comatecs/features/language/presentation/views/language_view.dart';
import 'package:comatecs/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:comatecs/features/splash/presentaion/views/splash_view.dart';
import 'package:get/get.dart';

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
  static const verifyCodeSignUpView = "/verifyCodeSignUpView";

  static List<GetPage<dynamic>>? routes = [
    GetPage(
     
      name: "/",
      page: () => const SplashView(),
    ),
    GetPage(
     
      name: loginView,
      page: () => const LoginView(),
    ),
    GetPage(
      middlewares: [
        OnBoardingMiddleware(),
      ],
      name: languageView,
      page: () => const Language(),
    ),
    GetPage(
       middlewares: [
        OnBoardingMiddleware(),
      ],
      name: onBoardingView,
      page: () => const OnBoardingView(),
    ),
    GetPage(
      name: signUpView,
      page: () => const SignUpView(),
    ),
    GetPage(
      name: forgetPasswordView,
      page: () => const ForgetPasswordView(),
    ),
    GetPage(
      name: resetPasswordView,
      page: () => const ResetPasswordView(),
    ),
    GetPage(
      name: resetPasswordSuccessView,
      page: () => const ResetPasswordSuccess(),
    ),
    GetPage(
      name: homeView,
      page: () => const HomeView(),
    ),
    GetPage(
      name: verifyCodePasswordView,
      page: () => const VerifyCodePasswordView(),
    ),
    GetPage(
      name: signUpSuccess,
      page: () => const SignUpSuccess(),
    ),
    GetPage(
      name: verifyCodeSignUpView,
      page: () => const VerifyCodeSignUpView(),
    ),
  ];
}
