import 'package:comatecs/core/utils/widgets/custom_view_title.dart';
import 'package:comatecs/features/my_orders/presentation/views/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: CustomViewTitle(
            title: 'طلباتي',
          ),
        ),
        Expanded(
          child: CustomTabBar(),
        ),
      ],
    );
  }
}
