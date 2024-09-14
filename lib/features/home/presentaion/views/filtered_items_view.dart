import 'package:comatecs/features/home/presentaion/views/widgets/filtered_items_view_body.dart';
import 'package:flutter/material.dart';

class FilteredItemsView extends StatelessWidget {
  const FilteredItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const FilteredItemsViewBody(),
    );
  }
}
