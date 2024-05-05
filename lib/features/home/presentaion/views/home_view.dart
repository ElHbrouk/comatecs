import 'package:comatecs/core/functions/alert_exit_app.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          alertExitApp();
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ProductItemGridView(),
        ),
      ),
    );
  }
}
