import 'package:comatecs/features/home/presentaion/views/widgets/item_detail_view_body.dart';
import 'package:flutter/material.dart';



class ItemDetailView extends StatelessWidget {
  const ItemDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ItemDetailViewBody(),
    );
  }
}