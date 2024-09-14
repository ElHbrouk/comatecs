import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:hive_flutter/adapters.dart';

void saveData(List<ItemEntity> items, String boxName) {
  var box = Hive.box<ItemEntity>(boxName);
  box.addAll(items);
}
