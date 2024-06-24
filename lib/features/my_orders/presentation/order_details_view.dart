import 'package:comatecs/features/my_orders/presentation/widgets/order_details_view_body.dart';
import 'package:flutter/material.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderDetailsViewBody(),
    );
  }
}
