import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/features/my_orders/domain/entites/order_entity.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabBarItemListView extends StatelessWidget {
  const TabBarItemListView({
    super.key,
    required this.orderEntity,
    required this.paymentStatus,
    required this.orderStatus,
  });
  final List<OrderEntity> orderEntity;
  final Color paymentStatus;
  final Color orderStatus;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: orderEntity.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(5.0),
            onTap: () {
              context.pushNamed(
                AppRoutes.orderDetailsView,
                extra: orderEntity[index],
              );
            },
            child: TabBarItem(
              orderEntity: orderEntity[index],
              paymentStatusColor: paymentStatus,
              orderStatusColor: orderStatus,
            ),
          ),
        );
      },
    );
  }
}
