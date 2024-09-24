import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/order_invoice_view_body.dart';
import 'package:flutter/material.dart';

class OrderInvoiceView extends StatelessWidget {
  const OrderInvoiceView({super.key, required this.orderEntity});
  final OrderEntity orderEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderInvoiceViewBody(
        orderEntity: orderEntity,
      ),
    );
  }
}
