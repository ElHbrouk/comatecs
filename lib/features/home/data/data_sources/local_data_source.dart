

// abstract class LocalDataSource {
//   List<ItemEntity> fetchLocalProducts();
// }
//
// class HomeLocalDataSource extends LocalDataSource {
//   @override
//   List<ItemEntity> fetchLocalProducts() {
//     var box = Hive.box<ItemEntity>(kItemEntityBox);
//     return box.values.toList();
//   }
// }
