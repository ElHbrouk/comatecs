import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cart_entity.g.dart';

@JsonSerializable()
class CartEntity {
  final int cartItemId;
  final int itemCartQuantity;
  final ItemEntity item;

  const CartEntity({
    required this.cartItemId,
    required this.itemCartQuantity,
    required this.item,
  });
  factory CartEntity.fromJson(Map<String, dynamic> json) => _$CartEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CartEntityToJson(this);
}
