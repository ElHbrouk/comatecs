import 'package:comatecs/features/my_orders/presentation/widgets/my_order_view_body.dart';
import 'package:flutter/material.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: MyOrdersViewBody(),
      ),
    );
  }
}
