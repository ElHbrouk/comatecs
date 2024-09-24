import 'package:comatecs/core/utils/functions/custom_error_snack_bar.dart';
import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/core/utils/widgets/price_item_button.dart';
import 'package:comatecs/features/account/presentation/views/widgets/custom_title_with_back_button.dart';
import 'package:comatecs/features/cart/presentaion/cubits/cart_checkout/cart_checkout_cubit.dart';
import 'package:comatecs/features/cart/presentaion/cubits/fetch_cart_items/fetch_cart_items_cubit.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class PayOperationViewBody extends StatelessWidget {
  const PayOperationViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCheckoutCubit, CartCheckoutState>(
      listener: (context, state) {
        if (state is CartCheckoutSuccess) {
          buildSuccessSnackBar(context, 'تم الدفع بنجاح');
        } else if (state is CartCheckoutFailure) {
          if (state.errorMessage ==
              'DioException [connection error]: The connection errored: A request to send or receive data was disallowed because the socket is not connected and (when sending on a datagram socket using a sendto call) no address was supplied. This indicates an error which most likely cannot be solved by the library. Error: SocketException: A request to send or receive data was disallowed because the socket is not connected and (when sending on a datagram socket using a sendto call) no address was supplied.(OS Error: A request to send or receive data was disallowed because the socket is not connected and (when sending on a datagram socket using a sendto call) no address was supplied. , errno = 10057), address = 23.106.49.10, port = 62063') {
            buildErrorSnackBar(context, 'يرجى الاتصال بالانترنت');
          }
          buildErrorSnackBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is CartCheckoutLoading,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 20.0,
              end: 20.0,
              start: 20.0,
            ),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitleWithBackButton(
                        title: 'عملية الدفع',
                      ),
                      Text(
                        'حدد خيار الدفع',
                      ),
                      PaymentMethods(),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: PriceItemButton(
                        buttonName: 'تأكيد',
                        price: 'JOD 32.000',
                        onPressed: () async {
                          BlocProvider.of<CartCheckoutCubit>(context)
                              .cartCheckout();
                          await Future.delayed(Durations.medium2);
                          BlocProvider.of<FetchCartItemsCubit>(context)
                              .fetchCartItems();
                          buildSuccessSnackBar(context, 'تم الدفع بنجاح');
                          context.go(AppRoutes.homeLayout);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
