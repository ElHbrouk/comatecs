// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartEntity _$CartEntityFromJson(Map<String, dynamic> json) => CartEntity(
      cartItemId: (json['cartItemId'] as num).toInt(),
      itemCartQuantity: (json['itemCartQuantity'] as num).toInt(),
      item: ItemEntity.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartEntityToJson(CartEntity instance) =>
    <String, dynamic>{
      'cartItemId': instance.cartItemId,
      'itemCartQuantity': instance.itemCartQuantity,
      'item': instance.item.toJson(),
    };
