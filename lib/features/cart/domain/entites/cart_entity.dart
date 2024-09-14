import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:json/json.dart';

@JsonCodable()
class CartEntity {
  final int cartItemId;
  final int itemCartQuantity;
  final ItemEntity item;

  const CartEntity({
    required this.cartItemId,
    required this.itemCartQuantity,
    required this.item,
  });
}
