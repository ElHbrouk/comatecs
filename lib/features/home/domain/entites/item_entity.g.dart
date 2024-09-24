// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemEntity _$ItemEntityFromJson(Map<String, dynamic> json) => ItemEntity(
      itemName: json['itemName'] as String,
      itemImage: json['itemImage'] as String,
      itemPrice: json['itemPrice'] as num,
      itemId: (json['itemId'] as num).toInt(),
      itemQuantity: (json['itemQuantity'] as num).toInt(),
      itemFeatures: json['itemFeatures'] as String,
      itemDescription: json['itemDescription'] as String,
      itemDeliveryDuration: json['itemDeliveryDuration'] as String,
      itemDeliveryPrice: json['itemDeliveryPrice'] as num,
    );

Map<String, dynamic> _$ItemEntityToJson(ItemEntity instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'itemImage': instance.itemImage,
      'itemPrice': instance.itemPrice,
      'itemId': instance.itemId,
      'itemQuantity': instance.itemQuantity,
      'itemFeatures': instance.itemFeatures,
      'itemDescription': instance.itemDescription,
      'itemDeliveryDuration': instance.itemDeliveryDuration,
      'itemDeliveryPrice': instance.itemDeliveryPrice,
    };
