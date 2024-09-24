import 'package:json_annotation/json_annotation.dart';
part 'item_entity.g.dart';
@JsonSerializable()
class ItemEntity {
  final String itemName;
  final String itemImage;
  final num itemPrice;
  final int itemId;
  final int itemQuantity;
  final String itemFeatures;
  final String itemDescription;
  final String itemDeliveryDuration;
  final num itemDeliveryPrice;

  ItemEntity({
    required this.itemName,
    required this.itemImage,
    required this.itemPrice,
    required this.itemId,
    required this.itemQuantity,
    required this.itemFeatures,
    required this.itemDescription,
    required this.itemDeliveryDuration,
    required this.itemDeliveryPrice,
  });

  factory ItemEntity.fromJson(Map<String, dynamic> json) => _$ItemEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ItemEntityToJson(this);
}
