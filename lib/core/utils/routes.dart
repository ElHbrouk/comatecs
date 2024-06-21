import 'package:comatecs/bindings/signup_bindings.dart';
import 'package:comatecs/core/middlewares/on_boarding_miiddleware.dart';
import 'package:comatecs/features/account/presentation/account_view.dart';
import 'package:comatecs/features/account/presentation/edit_profile_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/check_email_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/verify_code_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/login/login_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/verify_code_sign_up_view.dart';
import 'package:comatecs/features/cart/presentaion/view/cart_view.dart';
import 'package:comatecs/features/favourite/presentaion/view/favourite_view.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
import 'package:comatecs/features/home/presentaion/views/item_detail_view.dart';
import 'package:comatecs/features/home_layout/home_layout.dart';
import 'package:comatecs/features/language/presentation/views/language_view.dart';
import 'package:comatecs/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:comatecs/features/splash/presentaion/views/splash_view.dart';
// import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const splashView = "/";
  static const languageView = "/languageView";
  // --------------- onBoarding views --------------
  static const onBoardingView = "/onBoardingView";
  // --------------- Auth views ---------------
  static const loginView = "/loginView";
  static const signUpView = "/signUpView";
  static const forgetPasswordView = "/forgetPasswordView";
  static const resetPasswordView = "/resetPasswordView";
  static const resetPasswordSuccessView = "/resetPasswordSuccessView";
  static const verifyCodePasswordView = "/verifyCodeViewPassword";
  static const signUpSuccess = "/signUpSuccess";
  static const verifyCodeSignUpView = "/verifyCodeSignUpView";

//--------------- items views ---------------
  static const homeView = "/homeView";
  static const homeLayout = "/homeLayout";
  static const itemDetailView = "/itemDetailView";
  static const accountView = "/accountView";
  static const cartView = "/cartView";
  static const favouriteView = "/favouriteView";
  static const editProfileView = "/editProfileView";

  static GoRouter routes = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: splashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: loginView,
      builder: (context, state) => const LoginView(),
    ),
    // GoRoute(
    //   path: languageView,
    //   builder: (context, state) => const Language(),
    // ),
    GoRoute(
      // middlewares: [
      //   OnBoardingMiddleware(),
      // ],
      path: onBoardingView,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      // binding: SignUpBindings(),
      path: signUpView,
      builder: (context, state) => const SignUpView(),
    ),
    // GoRoute(
    //   path: forgetPasswordView,
    //   builder: (context, state) => const ForgetPasswordView(),
    // ),
    GoRoute(
      path: resetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: resetPasswordSuccessView,
      builder: (context, state) => const ResetPasswordSuccess(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
     GoRoute(
      path: homeLayout,
      builder: (context, state) => const HomeLayout(),
    ),
    GoRoute(
      path: verifyCodePasswordView,
      builder: (context, state) => const VerifyCodePasswordView(),
    ),
    GoRoute(
      path: signUpSuccess,
      builder: (context, state) => const SignUpSuccess(),
    ),
    GoRoute(
      path: verifyCodeSignUpView,
      builder: (context, state) => const VerifyCodeSignUpView(),
    ),
    GoRoute(
      path: itemDetailView,
      builder: (context, state) => const ItemDetailView(),
    ),
    GoRoute(
      path: accountView,
      builder: (context, state) => const AccountView(),
    ),
    GoRoute(
      path: cartView,
      builder: (context, state) => const CartView(),
    ),
    GoRoute(
      path: favouriteView,
      builder: (context, state) => const FavouriteView(),
    ),
    GoRoute(
      path: editProfileView,
      builder: (context, state) => const EditProfileView(),
    ),
  ]);
}
