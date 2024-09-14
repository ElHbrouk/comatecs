import 'package:comatecs/core/services/getit_service.dart';
import 'package:comatecs/features/cart/domain/repositories/cart_repository.dart';
import 'package:comatecs/features/cart/domain/use_cases/cart_checkout_use_case.dart';
import 'package:comatecs/features/cart/presentaion/cubits/cart_checkout/cart_checkout_cubit.dart';
import 'package:comatecs/features/payment/presentaion/views/widgets/pay_operation_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PayOperationView extends StatelessWidget {
  const PayOperationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => CartCheckoutCubit(
            CartCheckoutUseCase(
              getIt<CartRepository>(),
            ),
          ),
          child: const PayOperationViewBody(),
        ),
      ),
    );
  }
}
