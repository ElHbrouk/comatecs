import 'package:comatecs/features/my_orders/presentation/widgets/order_invoice_view_body.dart';
import 'package:flutter/material.dart';

class OrderInvoiceView extends StatelessWidget {
  const OrderInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderInvoiceViewBody(),
    );
  }
}
