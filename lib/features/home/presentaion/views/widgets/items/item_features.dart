import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ItemFeatures extends StatelessWidget {
  const ItemFeatures({
    super.key,
    required this.itemEntity,
  });
  final ItemEntity itemEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مميزات',
          style: AppFonts.bold14.copyWith(
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 100,
          child: Markdown(
            selectable: true,
            data: itemEntity.itemFeatures,
            listItemCrossAxisAlignment:
                MarkdownListItemCrossAxisAlignment.start,
            styleSheet: MarkdownStyleSheet(
              p: AppFonts.regular12.copyWith(
                color: Colors.grey[700],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
