import 'package:comatecs/constants.dart';
import 'package:comatecs/features/home/domain/entites/item_entity.dart';
import 'package:hive_flutter/adapters.dart';

abstract class LocalDataSource {
  List<ItemEntity> fetchLocalProducts();
}

class HomeLocalDataSource extends LocalDataSource {
  @override
  List<ItemEntity> fetchLocalProducts() {
    var box = Hive.box<ItemEntity>(kItemEntityBox);
    return box.values.toList();
  }
}
