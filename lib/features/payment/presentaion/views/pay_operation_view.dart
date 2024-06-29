import 'package:comatecs/features/payment/presentaion/views/widgets/pay_operation_view_body.dart';
import 'package:flutter/material.dart';

class PayOperationView extends StatelessWidget {
  const PayOperationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PayOperationViewBody(),
      ),
    );
  }
}
