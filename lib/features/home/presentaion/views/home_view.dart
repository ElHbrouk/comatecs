import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/items/product_item_grid_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: const CustomBackButton(),
       ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ProductItemGridView(),
      ),
    );
  }
}

