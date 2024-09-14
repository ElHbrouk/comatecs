// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemEntityAdapter extends TypeAdapter<ItemEntity> {
  @override
  final int typeId = 0;

  @override
  ItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemEntity(
      itemName: fields[0] as String,
      itemImage: fields[1] as String,
      itemPrice: fields[2] as num,
      itemId: fields[3] as int,
      itemQuantity: fields[4] as int,
      itemFeatures: fields[5] as String,
      itemDescription: fields[6] as String,
      itemDeliveryDuration: fields[7] as String,
      itemDeliveryPrice: fields[8] as num,
    );
  }

  @override
  void write(BinaryWriter writer, ItemEntity obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.itemName)
      ..writeByte(1)
      ..write(obj.itemImage)
      ..writeByte(2)
      ..write(obj.itemPrice)
      ..writeByte(3)
      ..write(obj.itemId)
      ..writeByte(4)
      ..write(obj.itemQuantity)
      ..writeByte(5)
      ..write(obj.itemFeatures)
      ..writeByte(6)
      ..write(obj.itemDescription)
      ..writeByte(7)
      ..write(obj.itemDeliveryDuration)
      ..writeByte(8)
      ..write(obj.itemDeliveryPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
