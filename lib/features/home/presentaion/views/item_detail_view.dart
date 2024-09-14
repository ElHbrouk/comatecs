import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:comatecs/features/home/presentaion/views/widgets/item_detail_view_body.dart';
import 'package:flutter/material.dart';

class ItemDetailView extends StatelessWidget {
  const ItemDetailView({super.key, required this.itemEntity});
  final ItemEntity itemEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ItemDetailViewBody(
          itemEntity: itemEntity,
        ),
      ),
    );
  }
}
