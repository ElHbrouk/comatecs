import 'package:comatecs/core/utils/app_colors.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/tab_bar_item_list_view.dart';
import 'package:flutter/material.dart';

class CompletedPayment extends StatelessWidget {
  const CompletedPayment({super.key, required this.orderEntity});
  final List<OrderEntity> orderEntity;

  @override
  Widget build(BuildContext context) {
    return TabBarItemListView(
      orderEntity: orderEntity,
      paymentStatus: Colors.grey,
      orderStatus: AppColors.primaryColor,
    );
  }
}
