import 'package:hive_flutter/adapters.dart';
import 'package:json/json.dart';
part 'item_entity.g.dart';
@HiveType(typeId: 0)
@JsonCodable()
class ItemEntity {
  @HiveField(0)
  final String itemName;
  @HiveField(1)
  final String itemImage;
  @HiveField(2)
  final num itemPrice;
  @HiveField(3)
  final int itemId;
  @HiveField(4)
  final int itemQuantity;
  @HiveField(5)
  final String itemFeatures;
  @HiveField(6)
  final String itemDescription;
  @HiveField(7)
  final String itemDeliveryDuration;
  @HiveField(8)
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

  // ItemEntity.fromMap(
  //   Map map,
  // )   : itemName = map["itemName"],
  //       itemImage = map["itemImage"],
  //       itemPrice = map["itemPrice"],
  //       itemId = map["itemId"],
  //       itemQuantity = map["itemQuantity"],
  //       itemFeatures = map["itemFeatures"],
  //       itemDescription = map["itemDescription"],
  //       itemDeliveryDuration = map['itemDeliveryDuration'],
  //       itemDeliveryPrice = map[
  //           'itemDeliveryPrice']; // This Function helps to convert our Map into our User Object

  // Map toMap() {
  //   // This Function helps to convert our ItemEntity Object into a Map.
  //   return {
  //     "itemName": itemName,
  //     "itemPrice": itemPrice,
  //     "itemImage": itemImage,
  //     "itemId": itemId,
  //     "itemQuantity": itemQuantity,
  //     "itemDescription": itemDescription,
  //     "itemDeliveryDuration": itemDeliveryDuration,
  //     "itemDeliveryPrice": itemDeliveryPrice,
  //     "itemFeatures": itemFeatures,
  //   };
  // }
}
