import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_entity.g.dart';

@JsonSerializable()
class CategoryEntity {
  final int categoryId;
  final String categoryName;
  final List<ItemEntity> categoryProducts;

  CategoryEntity({
    required this.categoryId,
    required this.categoryName,
    required this.categoryProducts,
  });
  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryEntityToJson(this);
}
