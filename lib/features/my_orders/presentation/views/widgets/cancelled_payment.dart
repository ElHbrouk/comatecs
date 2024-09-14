import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/tab_bar_item_list_view.dart';
import 'package:flutter/material.dart';

class CancelledPayment extends StatelessWidget {
  const CancelledPayment({super.key, required this.orderEntity});
  final List<OrderEntity> orderEntity;
  @override
  Widget build(BuildContext context) {
    return TabBarItemListView(
      orderEntity: orderEntity,
      paymentStatus: Colors.grey,
      orderStatus: Colors.red,
    );
  }
}
