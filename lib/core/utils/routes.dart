import 'package:comatecs/features/account/presentation/views/about_comactes_view.dart';
import 'package:comatecs/features/account/presentation/views/account_view.dart';
import 'package:comatecs/features/account/presentation/views/edit_address_view.dart';
import 'package:comatecs/features/account/presentation/views/edit_password_view.dart';
import 'package:comatecs/features/account/presentation/views/edit_profile_view.dart';
import 'package:comatecs/features/cart/domain/entites/cart_entity.dart';
import 'package:comatecs/features/home/presentaion/views/all_categories_view.dart';
import 'package:comatecs/features/home/presentaion/views/category_items_view.dart';
import 'package:comatecs/features/home/presentaion/views/filtered_items_view.dart';
import 'package:comatecs/features/home/presentaion/views/searched_items_view.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/my_orders_view.dart';
import 'package:comatecs/features/payment/presentaion/views/pay_operation_view.dart';
import 'package:comatecs/features/account/presentation/views/technical_support_view.dart';
import 'package:comatecs/features/account/presentation/views/widgets/edit/edit_personal_info_view.dart';
import 'package:comatecs/features/account/presentation/views/terms_and_conditions_view.dart';
import 'package:comatecs/features/account/presentation/views/who_are_we_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/check_email_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/reset_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/forget_password/verify_code_password_view.dart';
import 'package:comatecs/features/auth/presentaion/views/login/login_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_success_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/sign_up_view.dart';
import 'package:comatecs/features/auth/presentaion/views/sign_up/verify_code_sign_up_view.dart';
import 'package:comatecs/features/cart/presentaion/views/cart_view.dart';
import 'package:comatecs/features/favourite/presentaion/views/favourite_view.dart';
import 'package:comatecs/features/home/presentaion/views/home_view.dart';
import 'package:comatecs/features/home/presentaion/views/item_detail_view.dart';
import 'package:comatecs/features/home_layout/presentaion/views/home_layout.dart';
import 'package:comatecs/features/my_orders/presentation/views/order_details_view.dart';
import 'package:comatecs/features/my_orders/presentation/views/order_invoice_view.dart';
import 'package:comatecs/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:comatecs/features/payment/presentaion/views/payment_view.dart';
import 'package:comatecs/features/splash/presentaion/views/splash_view.dart';
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
  static const categoryItemsView = "/categoryItemsView";
  static const filteredItemsView = "/filteredItemsView";
  static const accountView = "/accountView";
  static const cartView = "/cartView";
  static const favouriteView = "/favouriteView";
  static const editProfileView = "/editProfileView";
  static const editPersonalInfoView = "/editPersonalInfoView";
  static const editPasswordView = "/editPasswordView";
  static const whoAreWeView = "/whoAreWeView";
  static const aboutComactesView = "/aboutComactesView";
  static const termsAndConditionsView = "/termsAndConitionsView";
  static const editAddressView = "/editAddressView";
  static const technicalSupportView = "/technicalSupportView";
  static const orderDetailsView = "orderDetailsView";
  static const orderInvoiceView = "orderInvoiceView";
  static const paymentView = "paymentView";
  static const payOperationView = "/payOperationView";
  static const allCategoriesView = "/allCategoriesView";
  static const searchedItemsView = "/searchedItemsview";
  static const myOrderView = "/myOrderView";

  static GoRouter routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: editPersonalInfoView,
        builder: (context, state) => const EditPersonalInfoView(),
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: resetPasswordView,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: resetPasswordSuccessView,
        builder: (context, state) => const ResetPasswordSuccess(),
      ),
      GoRoute(
        path: filteredItemsView,
        builder: (context, state) => const FilteredItemsView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: categoryItemsView,
        builder: (context, state) => const CategoryItemsView(),
      ),
      GoRoute(
        path: itemDetailView,
        builder: (context, state) => const ItemDetailView(),
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
        path: accountView,
        builder: (context, state) => const AccountView(),
      ),
      GoRoute(
          path: cartView,
          builder: (context, state) => const CartView(),
          routes: [
            GoRoute(
              path: paymentView,
              name: paymentView,
              builder: (context, state) => PaymentView(
                cartEntity: state.extra as List<CartEntity>,
              ),
            ),
          ]),
      GoRoute(
        path: favouriteView,
        builder: (context, state) => const FavouriteView(),
      ),
      GoRoute(
        path: editProfileView,
        builder: (context, state) => const EditProfileView(),
      ),
      GoRoute(
        path: editPasswordView,
        builder: (context, state) => const EditPasswordView(),
      ),
      GoRoute(
        path: whoAreWeView,
        builder: (context, state) => const WhoAreWeView(),
      ),
      GoRoute(
        path: aboutComactesView,
        builder: (context, state) => const AboutComactesView(),
      ),
      GoRoute(
        path: termsAndConditionsView,
        builder: (context, state) => const TermsAndConditionsView(),
      ),
      GoRoute(
        path: editAddressView,
        builder: (context, state) => const EditAddressView(),
      ),
      GoRoute(
        path: technicalSupportView,
        builder: (context, state) => const TechnicalSupportView(),
      ),
      GoRoute(
        path: myOrderView,
        builder: (context, state) => const MyOrdersView(),
        routes: [
          GoRoute(
            path: orderDetailsView,
            name: orderDetailsView,
            builder: (context, state) => OrderDetailsView(
              orderEntity: state.extra as OrderEntity,
            ),
          ),
          GoRoute(
            path: orderInvoiceView,
            name: orderInvoiceView,
            builder: (context, state) => OrderInvoiceView(
              orderEntity: state.extra as OrderEntity,
            ),
          ),
        ],
      ),
      GoRoute(
        path: payOperationView,
        builder: (context, state) => const PayOperationView(),
      ),
      GoRoute(
        path: allCategoriesView,
        builder: (context, state) => const AllCategoriesView(),
      ),
      GoRoute(
        path: searchedItemsView,
        builder: (context, state) => const SearchedItemsView(),
      ),
    ],
  );
}
